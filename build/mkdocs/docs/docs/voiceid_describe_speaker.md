<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_describe_speaker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified speaker

### Description

Describes the specified speaker.

### Usage

    voiceid_describe_speaker(DomainId, SpeakerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_describe_speaker_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
speaker.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_describe_speaker_:_SpeakerId">SpeakerId</code></td>
<td><p>[required] The identifier of the speaker you are
describing.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Speaker = list(
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        CustomerSpeakerId = "string",
        DomainId = "string",
        GeneratedSpeakerId = "string",
        LastAccessedAt = as.POSIXct(
          "2015-01-01"
        ),
        Status = "ENROLLED"|"EXPIRED"|"OPTED_OUT"|"PENDING",
        UpdatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_speaker(
      DomainId = "string",
      SpeakerId = "string"
    )
