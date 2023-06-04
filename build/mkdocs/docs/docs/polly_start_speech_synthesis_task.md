<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_start_speech_synthesis_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the creation of an asynchronous synthesis task, by starting a new SpeechSynthesisTask

### Description

Allows the creation of an asynchronous synthesis task, by starting a new
`SpeechSynthesisTask`. This operation requires all the standard
information needed for speech synthesis, plus the name of an Amazon S3
bucket for the service to store the output of the synthesis task and two
optional parameters (`OutputS3KeyPrefix` and `SnsTopicArn`). Once the
synthesis task is created, this operation will return a
`SpeechSynthesisTask` object, which will include an identifier of this
task as well as the current status. The `SpeechSynthesisTask` object is
available for 72 hours after starting the asynchronous synthesis task.

### Usage

    polly_start_speech_synthesis_task(Engine, LanguageCode, LexiconNames,
      OutputFormat, OutputS3BucketName, OutputS3KeyPrefix, SampleRate,
      SnsTopicArn, SpeechMarkTypes, Text, TextType, VoiceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_Engine">Engine</code></td>
<td><p>Specifies the engine (<code>standard</code> or
<code>neural</code>) for Amazon Polly to use when processing input text
for speech synthesis. Using a voice that is not supported for the engine
selected will result in an error.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_start_speech_synthesis_task_:_LanguageCode">LanguageCode</code></td>
<td><p>Optional language code for the Speech Synthesis request. This is
only necessary if using a bilingual voice, such as Aditi, which can be
used for either Indian English (en-IN) or Hindi (hi-IN).</p>
<p>If a bilingual voice is used and no language code is specified,
Amazon Polly uses the default language of the bilingual voice. The
default language for any voice is the one returned by the
<code>describe_voices</code> operation for the <code>LanguageCode</code>
parameter. For example, if no language code is specified, Aditi will use
Indian English rather than Hindi.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_LexiconNames">LexiconNames</code></td>
<td><p>List of one or more pronunciation lexicon names you want the
service to apply during synthesis. Lexicons are applied only if the
language of the lexicon is the same as the language of the
voice.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_start_speech_synthesis_task_:_OutputFormat">OutputFormat</code></td>
<td><p>[required] The format in which the returned output will be
encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For
speech marks, this will be json.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_OutputS3BucketName">OutputS3BucketName</code></td>
<td><p>[required] Amazon S3 bucket name to which the output file will be
saved.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_start_speech_synthesis_task_:_OutputS3KeyPrefix">OutputS3KeyPrefix</code></td>
<td><p>The Amazon S3 key prefix for the output speech file.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_SampleRate">SampleRate</code></td>
<td><p>The audio frequency specified in Hz.</p>
<p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
and "24000". The default value for standard voices is "22050". The
default value for neural voices is "24000".</p>
<p>Valid values for pcm are "8000" and "16000" The default value is
"16000".</p></td>
</tr>
<tr class="even">
<td><code
id="polly_start_speech_synthesis_task_:_SnsTopicArn">SnsTopicArn</code></td>
<td><p>ARN for the SNS topic optionally used for providing status
notification for a speech synthesis task.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_SpeechMarkTypes">SpeechMarkTypes</code></td>
<td><p>The type of speech marks returned for the input text.</p></td>
</tr>
<tr class="even">
<td><code id="polly_start_speech_synthesis_task_:_Text">Text</code></td>
<td><p>[required] The input text to synthesize. If you specify ssml as
the TextType, follow the SSML format for the input text.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_start_speech_synthesis_task_:_TextType">TextType</code></td>
<td><p>Specifies whether the input text is plain text or SSML. The
default value is plain text.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_start_speech_synthesis_task_:_VoiceId">VoiceId</code></td>
<td><p>[required] Voice ID to use for the synthesis.</p></td>
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

    svc$start_speech_synthesis_task(
      Engine = "standard"|"neural",
      LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI",
      LexiconNames = list(
        "string"
      ),
      OutputFormat = "json"|"mp3"|"ogg_vorbis"|"pcm",
      OutputS3BucketName = "string",
      OutputS3KeyPrefix = "string",
      SampleRate = "string",
      SnsTopicArn = "string",
      SpeechMarkTypes = list(
        "sentence"|"ssml"|"viseme"|"word"
      ),
      Text = "string",
      TextType = "ssml"|"text",
      VoiceId = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Gabrielle"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kevin"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Olivia"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu"|"Aria"|"Ayanda"|"Arlet"|"Hannah"|"Arthur"|"Daniel"|"Liam"|"Pedro"|"Kajal"|"Hiujin"|"Laura"|"Elin"|"Ida"|"Suvi"|"Ola"|"Hala"|"Andres"|"Sergio"|"Remi"|"Adriano"|"Thiago"|"Ruth"|"Stephen"|"Kazuha"|"Tomoko"
    )
