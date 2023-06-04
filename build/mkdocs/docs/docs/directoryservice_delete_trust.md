<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_delete_trust</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing trust relationship between your Managed Microsoft AD directory and an external domain

### Description

Deletes an existing trust relationship between your Managed Microsoft AD
directory and an external domain.

### Usage

    directoryservice_delete_trust(TrustId,
      DeleteAssociatedConditionalForwarder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_delete_trust_:_TrustId">TrustId</code></td>
<td><p>[required] The Trust ID of the trust relationship to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_delete_trust_:_DeleteAssociatedConditionalForwarder">DeleteAssociatedConditionalForwarder</code></td>
<td><p>Delete a conditional forwarder as part of a
DeleteTrustRequest.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrustId = "string"
    )

### Request syntax

    svc$delete_trust(
      TrustId = "string",
      DeleteAssociatedConditionalForwarder = TRUE|FALSE
    )
