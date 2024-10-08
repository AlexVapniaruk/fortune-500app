import { searchUrl, getCompanyByIdUrl } from "../../API_URL";
import { Company } from "./company";

export const searchForCompany = async (query:string) => {
    const res = await fetch(searchUrl(query));
    const data = await res.json();
    return data;
}

export const getCompanyById = async (id:string) => {
    const res = await fetch(getCompanyByIdUrl(id));
    const data = await res.json() as Company;
    console.log(data);
    return data;
}

