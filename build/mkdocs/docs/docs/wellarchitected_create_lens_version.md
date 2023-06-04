<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_create_lens_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new lens version

### Description

Create a new lens version.

A lens can have up to 100 versions.

Use this operation to publish a new lens version after you have imported
a lens. The `LensAlias` is used to identify the lens to be published.
The owner of a lens can share the lens with other Amazon Web Services
accounts and users in the same Amazon Web Services Region. Only the
owner of a lens can delete it.

### Usage

    wellarchitected_create_lens_version(LensAlias, LensVersion,
      IsMajorVersion, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_create_lens_version_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_lens_version_:_LensVersion">LensVersion</code></td>
<td><p>[required] The version of the lens being created.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_lens_version_:_IsMajorVersion">IsMajorVersion</code></td>
<td><p>Set to true if this new major lens version.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_lens_version_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensArn = "string",
      LensVersion = "string"
    )

### Request syntax

    svc$create_lens_version(
      LensAlias = "string",
      LensVersion = "string",
      IsMajorVersion = TRUE|FALSE,
      ClientRequestToken = "string"
    )
