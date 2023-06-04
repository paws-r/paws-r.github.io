<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_create_lens_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a lens share

### Description

Create a lens share.

The owner of a lens can share it with other Amazon Web Services
accounts, users, an organization, and organizational units (OUs) in the
same Amazon Web Services Region. Lenses provided by Amazon Web Services
(Amazon Web Services Official Content) cannot be shared.

Shared access to a lens is not removed until the lens invitation is
deleted.

If you share a lens with an organization or OU, all accounts in the
organization or OU are granted access to the lens.

For more information, see [Sharing a custom
lens](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html)
in the *Well-Architected Tool User Guide*.

**Disclaimer**

By sharing your custom lenses with other Amazon Web Services accounts,
you acknowledge that Amazon Web Services will make your custom lenses
available to those other accounts. Those other accounts may continue to
access and use your shared custom lenses even if you delete the custom
lenses from your own Amazon Web Services account or terminate your
Amazon Web Services account.

### Usage

    wellarchitected_create_lens_share(LensAlias, SharedWith,
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
id="wellarchitected_create_lens_share_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_lens_share_:_SharedWith">SharedWith</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_lens_share_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShareId = "string"
    )

### Request syntax

    svc$create_lens_share(
      LensAlias = "string",
      SharedWith = "string",
      ClientRequestToken = "string"
    )
