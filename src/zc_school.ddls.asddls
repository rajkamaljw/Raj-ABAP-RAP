@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'School Projection View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zc_school 
provider contract transactional_query
as projection on ZI_SCHOOL
{
    key Schoolid,
    Schoolname,
    Board,
    Location,
    City,
    Principal,
    /* Associations */
    _teacher : redirected to composition child zc_teacher
}
