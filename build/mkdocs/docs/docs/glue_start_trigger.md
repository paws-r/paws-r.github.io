<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an existing trigger

### Description

Starts an existing trigger. See [Triggering
Jobs](https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
information about how different types of trigger are started.

### Usage

    glue_start_trigger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_start_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger to start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$start_trigger(
      Name = "string"
    )
