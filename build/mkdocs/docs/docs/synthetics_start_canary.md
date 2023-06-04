<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_start_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to run a canary that has already been created

### Description

Use this operation to run a canary that has already been created. The
frequency of the canary runs is determined by the value of the canary's
`Schedule`. To see a canary's schedule, use `get_canary`.

### Usage

    synthetics_start_canary(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_start_canary_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want to run. To find
canary names, use <code>describe_canaries</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_canary(
      Name = "string"
    )
