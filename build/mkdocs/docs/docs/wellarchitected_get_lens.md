<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_lens</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get an existing lens

### Description

Get an existing lens.

### Usage

    wellarchitected_get_lens(LensAlias, LensVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_lens_:_LensVersion">LensVersion</code></td>
<td><p>The lens version to be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Lens = list(
        LensArn = "string",
        LensVersion = "string",
        Name = "string",
        Description = "string",
        Owner = "string",
        ShareInvitationId = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_lens(
      LensAlias = "string",
      LensVersion = "string"
    )
