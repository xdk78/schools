import BaseClient from './BaseClient'
import { BASE_LIBRUS_URL } from './constants'

export default class LibrusClient extends BaseClient {
  constructor() {
    super(BASE_LIBRUS_URL)
  }
}
