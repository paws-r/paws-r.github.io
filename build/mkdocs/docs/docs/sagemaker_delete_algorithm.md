<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_algorithm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified algorithm from your account

### Description

Removes the specified algorithm from your account.

### Usage

    sagemaker_delete_algorithm(AlgorithmName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_algorithm_:_AlgorithmName">AlgorithmName</code></td>
<td><p>[required] The name of the algorithm to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_algorithm(
      AlgorithmName = "string"
    )
