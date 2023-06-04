<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_get_speech_synthesis_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a specific SpeechSynthesisTask object based on its TaskID

### Description

Retrieves a specific SpeechSynthesisTask object based on its TaskID.
This object contains information about the given speech synthesis task,
including the status of the task, and a link to the S3 bucket containing
the output of the task.

### Usage

    polly_get_speech_synthesis_task(TaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="polly_get_speech_synthesis_task_:_TaskId">TaskId</code></td>
<td><p>[required] The Amazon Polly generated identifier for a speech
synthesis task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SynthesisTask = list(
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

### Request syntax

    svc$get_speech_synthesis_task(
      TaskId = "string"
    )
