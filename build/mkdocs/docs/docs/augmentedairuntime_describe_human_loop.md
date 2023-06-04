<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime_describe_human_loop</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified human loop

### Description

Returns information about the specified human loop. If the human loop
was deleted, this operation will return a `ResourceNotFoundException`
error.

### Usage

    augmentedairuntime_describe_human_loop(HumanLoopName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="augmentedairuntime_describe_human_loop_:_HumanLoopName">HumanLoopName</code></td>
<td><p>[required] The name of the human loop that you want information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      FailureCode = "string",
      HumanLoopStatus = "InProgress"|"Failed"|"Completed"|"Stopped"|"Stopping",
      HumanLoopName = "string",
      HumanLoopArn = "string",
      FlowDefinitionArn = "string",
      HumanLoopOutput = list(
        OutputS3Uri = "string"
      )
    )

### Request syntax

    svc$describe_human_loop(
      HumanLoopName = "string"
    )
