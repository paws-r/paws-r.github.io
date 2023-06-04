<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_transcription_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a transcription job

### Description

Deletes a transcription job. To use this operation, specify the name of
the job you want to delete using `TranscriptionJobName`. Job names are
case sensitive.

### Usage

    transcribeservice_delete_transcription_job(TranscriptionJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_transcription_job_:_TranscriptionJobName">TranscriptionJobName</code></td>
<td><p>[required] The name of the transcription job you want to delete.
Job names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_transcription_job(
      TranscriptionJobName = "string"
    )
