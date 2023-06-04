<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_search_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for profiles within a specific domain using one or more predefined search keys (e

### Description

Searches for profiles within a specific domain using one or more
predefined search keys (e.g., \_fullName, \_phone, \_email, \_account,
etc.) and/or custom-defined search keys. A search key is a data type
pair that consists of a `KeyName` and `Values` list.

This operation supports searching for profiles with a minimum of 1
key-value(s) pair and up to 5 key-value(s) pairs using either `AND` or
`OR` logic.

### Usage

    customerprofiles_search_profiles(NextToken, MaxResults, DomainName,
      KeyName, Values, AdditionalSearchKeys, LogicalOperator)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_search_profiles_:_NextToken">NextToken</code></td>
<td><p>The pagination token from the previous SearchProfiles API
call.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_search_profiles_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p>
<p>The default is 20 if this parameter is not included in the
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_search_profiles_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_search_profiles_:_KeyName">KeyName</code></td>
<td><p>[required] A searchable identifier of a customer profile. The
predefined keys you can use to search include: _account, _profileId,
_assetId, _caseId, _orderId, _fullName, _phone, _email, _ctrContactId,
_marketoLeadId, _salesforceAccountId, _salesforceContactId,
_salesforceAssetId, _zendeskUserId, _zendeskExternalId,
_zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
_segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_search_profiles_:_Values">Values</code></td>
<td><p>[required] A list of key values.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_search_profiles_:_AdditionalSearchKeys">AdditionalSearchKeys</code></td>
<td><p>A list of <code>AdditionalSearchKey</code> objects that are each
searchable identifiers of a profile. Each
<code>AdditionalSearchKey</code> object contains a <code>KeyName</code>
and a list of <code>Values</code> associated with that specific key
(i.e., a key-value(s) pair). These additional search keys will be used
in conjunction with the <code>LogicalOperator</code> and the required
<code>KeyName</code> and <code>Values</code> parameters to search for
profiles that satisfy the search criteria.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_search_profiles_:_LogicalOperator">LogicalOperator</code></td>
<td><p>Relationship between all specified search keys that will be used
to search for profiles. This includes the required <code>KeyName</code>
and <code>Values</code> parameters as well as any key-value(s) pairs
specified in the <code>AdditionalSearchKeys</code> list.</p>
<p>This parameter influences which profiles will be returned in the
response in the following manner:</p>
<ul>
<li><p><code>AND</code> - The response only includes profiles that match
all of the search keys.</p></li>
<li><p><code>OR</code> - The response includes profiles that match at
least one of the search keys.</p></li>
</ul>
<p>The <code>OR</code> relationship is the default behavior if this
parameter is not included in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          ProfileId = "string",
          AccountNumber = "string",
          AdditionalInformation = "string",
          PartyType = "INDIVIDUAL"|"BUSINESS"|"OTHER",
          BusinessName = "string",
          FirstName = "string",
          MiddleName = "string",
          LastName = "string",
          BirthDate = "string",
          Gender = "MALE"|"FEMALE"|"UNSPECIFIED",
          PhoneNumber = "string",
          MobilePhoneNumber = "string",
          HomePhoneNumber = "string",
          BusinessPhoneNumber = "string",
          EmailAddress = "string",
          PersonalEmailAddress = "string",
          BusinessEmailAddress = "string",
          Address = list(
            Address1 = "string",
            Address2 = "string",
            Address3 = "string",
            Address4 = "string",
            City = "string",
            County = "string",
            State = "string",
            Province = "string",
            Country = "string",
            PostalCode = "string"
          ),
          ShippingAddress = list(
            Address1 = "string",
            Address2 = "string",
            Address3 = "string",
            Address4 = "string",
            City = "string",
            County = "string",
            State = "string",
            Province = "string",
            Country = "string",
            PostalCode = "string"
          ),
          MailingAddress = list(
            Address1 = "string",
            Address2 = "string",
            Address3 = "string",
            Address4 = "string",
            City = "string",
            County = "string",
            State = "string",
            Province = "string",
            Country = "string",
            PostalCode = "string"
          ),
          BillingAddress = list(
            Address1 = "string",
            Address2 = "string",
            Address3 = "string",
            Address4 = "string",
            City = "string",
            County = "string",
            State = "string",
            Province = "string",
            Country = "string",
            PostalCode = "string"
          ),
          Attributes = list(
            "string"
          ),
          FoundByItems = list(
            list(
              KeyName = "string",
              Values = list(
                "string"
              )
            )
          ),
          PartyTypeString = "string",
          GenderString = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search_profiles(
      NextToken = "string",
      MaxResults = 123,
      DomainName = "string",
      KeyName = "string",
      Values = list(
        "string"
      ),
      AdditionalSearchKeys = list(
        list(
          KeyName = "string",
          Values = list(
            "string"
          )
        )
      ),
      LogicalOperator = "AND"|"OR"
    )
