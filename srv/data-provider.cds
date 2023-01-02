using {
    Personnels as per,
    Managers   as man,
} from '../db/data-models';

using {API_BUSINESS_PARTNER as bp} from './external/API_BUSINESS_PARTNER.csn';

service PersonnelManagement @(impl : './data-logics.js') {
    entity Personnels      as projection on per;
    entity Managers        as projection on man;
    entity BusinessPartner as projection on bp.A_BusinessPartner;
};
