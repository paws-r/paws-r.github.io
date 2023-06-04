<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_delete_allow_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an allow list

### Description

Deletes an allow list.

### Usage

    macie2_delete_allow_list(id, ignoreJobChecks)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_delete_allow_list_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_delete_allow_list_:_ignoreJobChecks">ignoreJobChecks</code></td>
<td><p>Specifies whether to force deletion of the allow list, even if
active classification jobs are configured to use the list.</p>
<p>When you try to delete an allow list, Amazon Macie checks for
classification jobs that use the list and have a status other than
COMPLETE or CANCELLED. By default, Macie rejects your request if any
jobs meet these criteria. To skip these checks and delete the list, set
this value to true. To delete the list only if no active jobs are
configured to use it, set this value to false.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_allow_list(
      id = "string",
      ignoreJobChecks = "string"
    )
