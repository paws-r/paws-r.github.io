<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime_start_human_loop</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a human loop, provided that at least one activation condition is met

### Description

Starts a human loop, provided that at least one activation condition is
met.

### Usage

    augmentedairuntime_start_human_loop(HumanLoopName, FlowDefinitionArn,
      HumanLoopInput, DataAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="augmentedairuntime_start_human_loop_:_HumanLoopName">HumanLoopName</code></td>
<td><p>[required] The name of the human loop.</p></td>
</tr>
<tr class="even">
<td><code
id="augmentedairuntime_start_human_loop_:_FlowDefinitionArn">FlowDefinitionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the flow definition
associated with this human loop.</p></td>
</tr>
<tr class="odd">
<td><code
id="augmentedairuntime_start_human_loop_:_HumanLoopInput">HumanLoopInput</code></td>
<td><p>[required] An object that contains information about the human
loop.</p></td>
</tr>
<tr class="even">
<td><code
id="augmentedairuntime_start_human_loop_:_DataAttributes">DataAttributes</code></td>
<td><p>Attributes of the specified data. Use <code>DataAttributes</code>
to specify if your data is free of personally identifiable information
and/or free of adult content.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HumanLoopArn = "string"
    )

### Request syntax

    svc$start_human_loop(
      HumanLoopName = "string",
      FlowDefinitionArn = "string",
      HumanLoopInput = list(
        InputContent = "string"
      ),
      DataAttributes = list(
        ContentClassifiers = list(
          "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
        )
      )
    )
