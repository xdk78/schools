import BaseClient from './BaseClient'
import { BASE_LIBRUS_URL, LIBRUS_CODE_URL, LIBRUS_LOGIN_URL, LIBRUS_CODE_EXCHANGE_URL, LIBRUS_CLIENT_ID } from './constants'
import cheerio from 'cheerio'

export default class LibrusClient extends BaseClient {
  constructor() {
    super(BASE_LIBRUS_URL)
  }

  public async login(email: string, password: string) {
    try {
      const response = await this.request(LIBRUS_CODE_URL, { method: 'get' })

      const $ = cheerio.load(response.data)
      const csrfToken = $('meta[name="csrf-token"]').attr('content')

      await this.request(LIBRUS_LOGIN_URL, {
        method: 'post',
        data: { email, password },
        headers: {
          'X-CSRF-TOKEN': csrfToken,
          'Content-Type': 'application/json'
        }
      })

      // Get auth code by re-visiting the code URL
      // It will now redirect to localhost with auth code supplied as a parameter.
      const authResponse = await this.request(LIBRUS_CODE_URL, {
        method: 'get',
        maxRedirects: 0
      })
      const authCode = authResponse.headers.get('location').split('code=')[1]

      // Exchange auth code for Librus account token
      const exchangeResponse = await this.request(LIBRUS_CODE_EXCHANGE_URL, {
        method: 'post',
        data: {
          grant_type: 'authorization_code',
          code: authCode,
          client_id: LIBRUS_CLIENT_ID,
          redirect_uri: 'http://localhost/bar'
        },
        headers: {
          'Content-Type': 'application/json'
        }
      })
      const accessToken = exchangeResponse.data['access_token']

      return accessToken
    } catch (error) {
      console.error(error)
    }
  }
}
