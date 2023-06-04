<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_auto_ml_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A method for forcing a running job to shut down

### Description

A method for forcing a running job to shut down.

### Usage

    sagemaker_stop_auto_ml_job(AutoMLJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_auto_ml_job_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] The name of the object you are requesting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_auto_ml_job(
      AutoMLJobName = "string"
    )
