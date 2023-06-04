<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_deregister_job_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters an Batch job definition

### Description

Deregisters an Batch job definition. Job definitions are permanently
deleted after 180 days.

### Usage

    batch_deregister_job_definition(jobDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_deregister_job_definition_:_jobDefinition">jobDefinition</code></td>
<td><p>[required] The name and revision (<code>name:revision</code>) or
full Amazon Resource Name (ARN) of the job definition to
deregister.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_job_definition(
      jobDefinition = "string"
    )

### Examples

    ## Not run: 
    # This example deregisters a job definition called sleep10.
    svc$deregister_job_definition(
      jobDefinition = "sleep10"
    )

    ## End(Not run)
