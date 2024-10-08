export const apiUrl = import.meta.env.VITE_API_URL;

export const searchUrl = (query:string) => `${apiUrl}/api/search?query=${query}`
export const getCompanyByIdUrl = (id:string) => `${apiUrl}/api/companies/${id}`