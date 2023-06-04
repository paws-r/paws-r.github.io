<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_contacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all contacts and escalation plans in Incident Manager

### Description

Lists all contacts and escalation plans in Incident Manager.

### Usage

    ssmcontacts_list_contacts(NextToken, MaxResults, AliasPrefix, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_contacts_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_contacts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of contacts and escalation plans per page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_contacts_:_AliasPrefix">AliasPrefix</code></td>
<td><p>Used to list only contacts who's aliases start with the specified
prefix.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_list_contacts_:_Type">Type</code></td>
<td><p>The type of contact. A contact is type <code>PERSONAL</code> and
an escalation plan is type <code>ESCALATION</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Contacts = list(
        list(
          ContactArn = "string",
          Alias = "string",
          DisplayName = "string",
          Type = "PERSONAL"|"ESCALATION"|"ONCALL_SCHEDULE"
        )
      )
    )

### Request syntax

    svc$list_contacts(
      NextToken = "string",
      MaxResults = 123,
      AliasPrefix = "string",
      Type = "PERSONAL"|"ESCALATION"|"ONCALL_SCHEDULE"
    )
