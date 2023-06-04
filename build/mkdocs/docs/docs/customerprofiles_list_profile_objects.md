<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_profile_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of objects associated with a profile of a given ProfileObjectType

### Description

Returns a list of objects associated with a profile of a given
ProfileObjectType.

### Usage

    customerprofiles_list_profile_objects(NextToken, MaxResults, DomainName,
      ObjectTypeName, ProfileId, ObjectFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_objects_:_NextToken">NextToken</code></td>
<td><p>The pagination token from the previous call to
ListProfileObjects.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_profile_objects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_objects_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_profile_objects_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_objects_:_ProfileId">ProfileId</code></td>
<td><p>[required] The unique identifier of a customer profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_profile_objects_:_ObjectFilter">ObjectFilter</code></td>
<td><p>Applies a filter to the response to include profile objects with
the specified index values. This filter is only supported for
ObjectTypeName _asset, _case and _order.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          ObjectTypeName = "string",
          ProfileObjectUniqueKey = "string",
          Object = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_profile_objects(
      NextToken = "string",
      MaxResults = 123,
      DomainName = "string",
      ObjectTypeName = "string",
      ProfileId = "string",
      ObjectFilter = list(
        KeyName = "string",
        Values = list(
          "string"
        )
      )
    )
