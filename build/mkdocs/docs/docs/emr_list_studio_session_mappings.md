<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_studio_session_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all user or group session mappings for the Amazon EMR Studio specified by StudioId

### Description

Returns a list of all user or group session mappings for the Amazon EMR
Studio specified by `StudioId`.

### Usage

    emr_list_studio_session_mappings(StudioId, IdentityType, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_list_studio_session_mappings_:_StudioId">StudioId</code></td>
<td><p>The ID of the Amazon EMR Studio.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_studio_session_mappings_:_IdentityType">IdentityType</code></td>
<td><p>Specifies whether to return session mappings for users or groups.
If not specified, the results include session mapping details for both
users and groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_list_studio_session_mappings_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionMappings = list(
        list(
          StudioId = "string",
          IdentityId = "string",
          IdentityName = "string",
          IdentityType = "USER"|"GROUP",
          SessionPolicyArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_studio_session_mappings(
      StudioId = "string",
      IdentityType = "USER"|"GROUP",
      Marker = "string"
    )
