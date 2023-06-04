<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_medical_transcription_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a medical transcription job

### Description

Deletes a medical transcription job. To use this operation, specify the
name of the job you want to delete using `MedicalTranscriptionJobName`.
Job names are case sensitive.

### Usage

    transcribeservice_delete_medical_transcription_job(
      MedicalTranscriptionJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_medical_transcription_job_:_MedicalTranscriptionJobName">MedicalTranscriptionJobName</code></td>
<td><p>[required] The name of the medical transcription job you want to
delete. Job names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_medical_transcription_job(
      MedicalTranscriptionJobName = "string"
    )
