<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_add_profile_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a new key value with a specific profile, such as a Contact Record ContactId

### Description

Associates a new key value with a specific profile, such as a Contact
Record ContactId.

A profile object can have a single unique key and any number of
additional keys that can be used to identify the profile that it belongs
to.

### Usage

    customerprofiles_add_profile_key(ProfileId, KeyName, Values, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_add_profile_key_:_ProfileId">ProfileId</code></td>
<td><p>[required] The unique identifier of a customer profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_add_profile_key_:_KeyName">KeyName</code></td>
<td><p>[required] A searchable identifier of a customer profile. The
predefined keys you can use include: _account, _profileId, _assetId,
_caseId, _orderId, _fullName, _phone, _email, _ctrContactId,
_marketoLeadId, _salesforceAccountId, _salesforceContactId,
_salesforceAssetId, _zendeskUserId, _zendeskExternalId,
_zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
_segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_add_profile_key_:_Values">Values</code></td>
<td><p>[required] A list of key values.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_add_profile_key_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyName = "string",
      Values = list(
        "string"
      )
    )

### Request syntax

    svc$add_profile_key(
      ProfileId = "string",
      KeyName = "string",
      Values = list(
        "string"
      ),
      DomainName = "string"
    )
