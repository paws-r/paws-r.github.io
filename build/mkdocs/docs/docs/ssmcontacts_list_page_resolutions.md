<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_page_resolutions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resolution path of an engagement

### Description

Returns the resolution path of an engagement. For example, the
escalation plan engaged in an incident might target an on-call schedule
that includes several contacts in a rotation, but just one contact
on-call when the incident starts. The resolution path indicates the
hierarchy of *escalation plan \\ on-call schedule \\ contact*.

### Usage

    ssmcontacts_list_page_resolutions(NextToken, PageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_page_resolutions_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_page_resolutions_:_PageId">PageId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact engaged
for the incident.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PageResolutions = list(
        list(
          ContactArn = "string",
          Type = "PERSONAL"|"ESCALATION"|"ONCALL_SCHEDULE",
          StageIndex = 123
        )
      )
    )

### Request syntax

    svc$list_page_resolutions(
      NextToken = "string",
      PageId = "string"
    )
