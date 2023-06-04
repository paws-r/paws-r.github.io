<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_delete_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Evidently launch

### Description

Deletes an Evidently launch. The feature used for the launch is not
deleted.

To stop a launch without deleting it, use `stop_launch`.

### Usage

    cloudwatchevidently_delete_launch(launch, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_delete_launch_:_launch">launch</code></td>
<td><p>[required] The name of the launch to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_delete_launch_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
launch to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_launch(
      launch = "string",
      project = "string"
    )
