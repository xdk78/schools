import axios, { AxiosInstance, AxiosRequestConfig } from 'axios'

export default abstract class BaseClient {
  protected _baseUrl: string
  protected _axiosClient: AxiosInstance

  constructor(baseUrl: string, headers?: any) {
    this._baseUrl = baseUrl
    this._axiosClient = axios.create({
      baseURL: this._baseUrl,
      headers
    })
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
