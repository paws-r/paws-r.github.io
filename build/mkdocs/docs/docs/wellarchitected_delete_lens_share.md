<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_delete_lens_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a lens share

### Description

Delete a lens share.

After the lens share is deleted, Amazon Web Services accounts, users,
organizations, and organizational units (OUs) that you shared the lens
with can continue to use it, but they will no longer be able to apply it
to new workloads.

**Disclaimer**

By sharing your custom lenses with other Amazon Web Services accounts,
you acknowledge that Amazon Web Services will make your custom lenses
available to those other accounts. Those other accounts may continue to
access and use your shared custom lenses even if you delete the custom
lenses from your own Amazon Web Services account or terminate your
Amazon Web Services account.

### Usage

    wellarchitected_delete_lens_share(ShareId, LensAlias,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_delete_lens_share_:_ShareId">ShareId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_delete_lens_share_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_delete_lens_share_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_lens_share(
      ShareId = "string",
      LensAlias = "string",
      ClientRequestToken = "string"
    )
