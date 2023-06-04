<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_lens_version_difference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get lens version differences

### Description

Get lens version differences.

### Usage

    wellarchitected_get_lens_version_difference(LensAlias, BaseLensVersion,
      TargetLensVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_version_difference_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_lens_version_difference_:_BaseLensVersion">BaseLensVersion</code></td>
<td><p>The base version of the lens.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_version_difference_:_TargetLensVersion">TargetLensVersion</code></td>
<td><p>The lens version to target a difference for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensAlias = "string",
      LensArn = "string",
      BaseLensVersion = "string",
      TargetLensVersion = "string",
      LatestLensVersion = "string",
      VersionDifferences = list(
        PillarDifferences = list(
          list(
            PillarId = "string",
            PillarName = "string",
            DifferenceStatus = "UPDATED"|"NEW"|"DELETED",
            QuestionDifferences = list(
              list(
                QuestionId = "string",
                QuestionTitle = "string",
                DifferenceStatus = "UPDATED"|"NEW"|"DELETED"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_lens_version_difference(
      LensAlias = "string",
      BaseLensVersion = "string",
      TargetLensVersion = "string"
    )
