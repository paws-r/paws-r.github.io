<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_evaluate_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Evaluates a specified session based on audio data accumulated during a streaming Amazon Connect Voice ID call

### Description

Evaluates a specified session based on audio data accumulated during a
streaming Amazon Connect Voice ID call.

### Usage

    voiceid_evaluate_session(DomainId, SessionNameOrId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_evaluate_session_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain where the session
started.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_evaluate_session_:_SessionNameOrId">SessionNameOrId</code></td>
<td><p>[required] The session identifier, or name of the session, that
you want to evaluate. In Voice ID integration, this is the
Contact-Id.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthenticationResult = list(
        AudioAggregationEndedAt = as.POSIXct(
          "2015-01-01"
        ),
        AudioAggregationStartedAt = as.POSIXct(
          "2015-01-01"
        ),
        AuthenticationResultId = "string",
        Configuration = list(
          AcceptanceThreshold = 123
        ),
        CustomerSpeakerId = "string",
        Decision = "ACCEPT"|"REJECT"|"NOT_ENOUGH_SPEECH"|"SPEAKER_NOT_ENROLLED"|"SPEAKER_OPTED_OUT"|"SPEAKER_ID_NOT_PROVIDED"|"SPEAKER_EXPIRED",
        GeneratedSpeakerId = "string",
        Score = 123
      ),
      DomainId = "string",
      FraudDetectionResult = list(
        AudioAggregationEndedAt = as.POSIXct(
          "2015-01-01"
        ),
        AudioAggregationStartedAt = as.POSIXct(
          "2015-01-01"
        ),
        Configuration = list(
          RiskThreshold = 123,
          WatchlistId = "string"
        ),
        Decision = "HIGH_RISK"|"LOW_RISK"|"NOT_ENOUGH_SPEECH",
        FraudDetectionResultId = "string",
        Reasons = list(
          "KNOWN_FRAUDSTER"|"VOICE_SPOOFING"
        ),
        RiskDetails = list(
          KnownFraudsterRisk = list(
            GeneratedFraudsterId = "string",
            RiskScore = 123
          ),
          VoiceSpoofingRisk = list(
            RiskScore = 123
          )
        )
      ),
      SessionId = "string",
      SessionName = "string",
      StreamingStatus = "PENDING_CONFIGURATION"|"ONGOING"|"ENDED"
    )

### Request syntax

    svc$evaluate_session(
      DomainId = "string",
      SessionNameOrId = "string"
    )
