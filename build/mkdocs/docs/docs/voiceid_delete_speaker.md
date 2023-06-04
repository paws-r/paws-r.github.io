<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_delete_speaker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified speaker from Voice ID

### Description

Deletes the specified speaker from Voice ID.

### Usage

    voiceid_delete_speaker(DomainId, SpeakerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_delete_speaker_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
speaker.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_delete_speaker_:_SpeakerId">SpeakerId</code></td>
<td><p>[required] The identifier of the speaker you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_speaker(
      DomainId = "string",
      SpeakerId = "string"
    )
