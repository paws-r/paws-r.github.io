<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_stop_icd10cm_inference_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an InferICD10CM inference job in progress

### Description

Stops an InferICD10CM inference job in progress.

### Usage

    comprehendmedical_stop_icd10cm_inference_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehendmedical_stop_icd10cm_inference_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier of the job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$stop_icd10cm_inference_job(
      JobId = "string"
    )
