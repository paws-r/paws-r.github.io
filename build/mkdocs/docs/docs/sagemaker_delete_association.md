<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an association

### Description

Deletes an association.

### Usage

    sagemaker_delete_association(SourceArn, DestinationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_association_:_SourceArn">SourceArn</code></td>
<td><p>[required] The ARN of the source.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_association_:_DestinationArn">DestinationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
destination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SourceArn = "string",
      DestinationArn = "string"
    )

### Request syntax

    svc$delete_association(
      SourceArn = "string",
      DestinationArn = "string"
    )
