<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_opt_out_speaker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Opts out a speaker from Voice ID

### Description

Opts out a speaker from Voice ID. A speaker can be opted out regardless
of whether or not they already exist in Voice ID. If they don't yet
exist, a new speaker is created in an opted out state. If they already
exist, their existing status is overridden and they are opted out.
Enrollment and evaluation authentication requests are rejected for opted
out speakers, and opted out speakers have no voice embeddings stored in
Voice ID.

### Usage

    voiceid_opt_out_speaker(DomainId, SpeakerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_opt_out_speaker_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
speaker.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_opt_out_speaker_:_SpeakerId">SpeakerId</code></td>
<td><p>[required] The identifier of the speaker you want
opted-out.</p></td>
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

    svc$opt_out_speaker(
      DomainId = "string",
      SpeakerId = "string"
    )
