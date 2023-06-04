<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_synthesize_speech</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes

### Description

Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
input must be valid, well-formed SSML. Some alphabets might not be
available with all the voices (for example, Cyrillic might not be read
at all by English voices) unless phoneme mapping is used. For more
information, see [How it
Works](https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).

### Usage

    polly_synthesize_speech(Engine, LanguageCode, LexiconNames,
      OutputFormat, SampleRate, SpeechMarkTypes, Text, TextType, VoiceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_synthesize_speech_:_Engine">Engine</code></td>
<td><p>Specifies the engine (<code>standard</code> or
<code>neural</code>) for Amazon Polly to use when processing input text
for speech synthesis. For information on Amazon Polly voices and which
voices are available in standard-only, NTTS-only, and both standard and
NTTS formats, see <a
href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Available
Voices</a>.</p>
<p><strong>NTTS-only voices</strong></p>
<p>When using NTTS-only voices such as Kevin (en-US), this parameter is
required and must be set to <code>neural</code>. If the engine is not
specified, or is set to <code>standard</code>, this will result in an
error.</p>
<p>Type: String</p>
<p>Valid Values: <code>standard</code> | <code>neural</code></p>
<p>Required: Yes</p>
<p><strong>Standard voices</strong></p>
<p>For standard voices, this is not required; the engine parameter
defaults to <code>standard</code>. If the engine is not specified, or is
set to <code>standard</code> and an NTTS-only voice is selected, this
will result in an error.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_synthesize_speech_:_LanguageCode">LanguageCode</code></td>
<td><p>Optional language code for the Synthesize Speech request. This is
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
id="polly_synthesize_speech_:_LexiconNames">LexiconNames</code></td>
<td><p>List of one or more pronunciation lexicon names you want the
service to apply during synthesis. Lexicons are applied only if the
language of the lexicon is the same as the language of the voice. For
information about storing lexicons, see
<code>put_lexicon</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_synthesize_speech_:_OutputFormat">OutputFormat</code></td>
<td><p>[required] The format in which the returned output will be
encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For
speech marks, this will be json.</p>
<p>When pcm is used, the content returned is audio/pcm in a signed
16-bit, 1 channel (mono), little-endian format.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_synthesize_speech_:_SampleRate">SampleRate</code></td>
<td><p>The audio frequency specified in Hz.</p>
<p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
and "24000". The default value for standard voices is "22050". The
default value for neural voices is "24000".</p>
<p>Valid values for pcm are "8000" and "16000" The default value is
"16000".</p></td>
</tr>
<tr class="even">
<td><code
id="polly_synthesize_speech_:_SpeechMarkTypes">SpeechMarkTypes</code></td>
<td><p>The type of speech marks returned for the input text.</p></td>
</tr>
<tr class="odd">
<td><code id="polly_synthesize_speech_:_Text">Text</code></td>
<td><p>[required] Input text to synthesize. If you specify
<code>ssml</code> as the <code>TextType</code>, follow the SSML format
for the input text.</p></td>
</tr>
<tr class="even">
<td><code id="polly_synthesize_speech_:_TextType">TextType</code></td>
<td><p>Specifies whether the input text is plain text or SSML. The
default value is plain text. For more information, see <a
href="https://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using
SSML</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="polly_synthesize_speech_:_VoiceId">VoiceId</code></td>
<td><p>[required] Voice ID to use for the synthesis. You can get a list
of available voice IDs by calling the <code>describe_voices</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AudioStream = raw,
      ContentType = "string",
      RequestCharacters = 123
    )

### Request syntax

    svc$synthesize_speech(
      Engine = "standard"|"neural",
      LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI",
      LexiconNames = list(
        "string"
      ),
      OutputFormat = "json"|"mp3"|"ogg_vorbis"|"pcm",
      SampleRate = "string",
      SpeechMarkTypes = list(
        "sentence"|"ssml"|"viseme"|"word"
      ),
      Text = "string",
      TextType = "ssml"|"text",
      VoiceId = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Gabrielle"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kevin"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Olivia"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu"|"Aria"|"Ayanda"|"Arlet"|"Hannah"|"Arthur"|"Daniel"|"Liam"|"Pedro"|"Kajal"|"Hiujin"|"Laura"|"Elin"|"Ida"|"Suvi"|"Ola"|"Hala"|"Andres"|"Sergio"|"Remi"|"Adriano"|"Thiago"|"Ruth"|"Stephen"|"Kazuha"|"Tomoko"
    )

### Examples

    ## Not run: 
    # Synthesizes plain text or SSML into a file of human-like speech.
    svc$synthesize_speech(
      LexiconNames = list(
        "example"
      ),
      OutputFormat = "mp3",
      SampleRate = "8000",
      Text = "All Gaul is divided into three parts",
      TextType = "text",
      VoiceId = "Joanna"
    )

    ## End(Not run)
