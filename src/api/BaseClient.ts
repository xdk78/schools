import axios, { AxiosInstance, AxiosRequestConfig } from 'axios'
const axiosCookieJarSupport = require('@3846masa/axios-cookiejar-support').default
import tough from 'tough-cookie'
const cookieJar = new tough.CookieJar()
axiosCookieJarSupport(axios)

interface CustomAxiosRequestConfig extends AxiosRequestConfig {
  jar: any
}

export default abstract class BaseClient {
  protected _baseUrl: string
  protected _axiosClient: AxiosInstance

  constructor(baseUrl: string, headers?: any) {
    this._baseUrl = baseUrl
    this._axiosClient = axios.create({
      baseURL: this._baseUrl,
      jar: cookieJar,
      withCredentials: true
    } as CustomAxiosRequestConfig)
  }

  protected async request(endpoint: string, config?: AxiosRequestConfig) {
    try {
      const response = await this._axiosClient({
        url: endpoint,
        ...config
      })
      return response
    } catch (error) {
      throw error
    }
  }
}
