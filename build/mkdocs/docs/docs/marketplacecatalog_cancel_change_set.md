<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_cancel_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to cancel an open change request

### Description

Used to cancel an open change request. Must be sent before the status of
the request changes to `APPLYING`, the final stage of completing your
change request. You can describe a change during the 60-day request
history retention period for API calls.

### Usage

    marketplacecatalog_cancel_change_set(Catalog, ChangeSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_cancel_change_set_:_Catalog">Catalog</code></td>
<td><p>[required] Required. The catalog related to the request. Fixed
value: <code>AWSMarketplace</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_cancel_change_set_:_ChangeSetId">ChangeSetId</code></td>
<td><p>[required] Required. The unique identifier of the
<code>start_change_set</code> request that you want to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetId = "string",
      ChangeSetArn = "string"
    )

### Request syntax

    svc$cancel_change_set(
      Catalog = "string",
      ChangeSetId = "string"
    )
