<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_list_speech_synthesis_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of SpeechSynthesisTask objects ordered by their creation date

### Description

Returns a list of SpeechSynthesisTask objects ordered by their creation
date. This operation can filter the tasks by their status, for example,
allowing users to list only tasks that are completed.

### Usage

    polly_list_speech_synthesis_tasks(MaxResults, NextToken, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="polly_list_speech_synthesis_tasks_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of speech synthesis tasks returned in a List
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_list_speech_synthesis_tasks_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use in the next request to continue the
listing of speech synthesis tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_list_speech_synthesis_tasks_:_Status">Status</code></td>
<td><p>Status of the speech synthesis tasks returned in a List
operation</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      SynthesisTasks = list(
        list(
          Engine = "standard"|"neural",
          TaskId = "string",
          TaskStatus = "scheduled"|"inProgress"|"completed"|"failed",
          TaskStatusReason = "string",
          OutputUri = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          RequestCharacters = 123,
          SnsTopicArn = "string",
          LexiconNames = list(
            "string"
          ),
          OutputFormat = "json"|"mp3"|"ogg_vorbis"|"pcm",
          SampleRate = "string",
          SpeechMarkTypes = list(
            "sentence"|"ssml"|"viseme"|"word"
          ),
          TextType = "ssml"|"text",
          VoiceId = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Gabrielle"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kevin"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Olivia"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu"|"Aria"|"Ayanda"|"Arlet"|"Hannah"|"Arthur"|"Daniel"|"Liam"|"Pedro"|"Kajal"|"Hiujin"|"Laura"|"Elin"|"Ida"|"Suvi"|"Ola"|"Hala"|"Andres"|"Sergio"|"Remi"|"Adriano"|"Thiago"|"Ruth"|"Stephen"|"Kazuha"|"Tomoko",
          LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI"
        )
      )
    )

### Request syntax

    svc$list_speech_synthesis_tasks(
      MaxResults = 123,
      NextToken = "string",
      Status = "scheduled"|"inProgress"|"completed"|"failed"
    )
