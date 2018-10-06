export const BASE_LIBRUS_URL = 'https://portal.librus.pl'
export const BASE_LIBRUS_OAUTH2_API_URL = `${BASE_LIBRUS_URL}/oauth2`
export const LIBRUS_CLIENT_ID = 'wmSyUMo8llDAs4y9tJVYY92oyZ6h4lAt7KCuy0Gv'
export const LIBRUS_CSRF_URL = `${BASE_LIBRUS_OAUTH2_API_URL}/authorize?client_id=${LIBRUS_CLIENT_ID}&redirect_uri=http://localhost/bar&response_type=code`
export const LIBRUS_LOGIN_URL = `${BASE_LIBRUS_URL}/rodzina/login/action`
export const LIBRUS_CODE_EXCHANGE_URL = `${BASE_LIBRUS_OAUTH2_API_URL}/access_token`
export const LIBRUS_TOKEN_EXCHANGE_URL = `${BASE_LIBRUS_URL}/api/SynergiaAccounts`
