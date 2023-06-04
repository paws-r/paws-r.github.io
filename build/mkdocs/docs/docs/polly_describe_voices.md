<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_describe_voices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of voices that are available for use when requesting speech synthesis

### Description

Returns the list of voices that are available for use when requesting
speech synthesis. Each voice speaks a specified language, is either male
or female, and is identified by an ID, which is the ASCII version of the
voice name.

When synthesizing speech ( `synthesize_speech` ), you provide the voice
ID for the voice you want from the list of voices returned by
`describe_voices`.

For example, you want your news reader application to read news in a
specific language, but giving a user the option to choose the voice.
Using the `describe_voices` operation you can provide the user with a
list of available voices to select from.

You can optionally specify a language code to filter the available
voices. For example, if you specify `en-US`, the operation returns a
list of all available US English voices.

This operation requires permissions to perform the
`polly:DescribeVoices` action.

### Usage

    polly_describe_voices(Engine, LanguageCode,
      IncludeAdditionalLanguageCodes, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_describe_voices_:_Engine">Engine</code></td>
<td><p>Specifies the engine (<code>standard</code> or
<code>neural</code>) used by Amazon Polly when processing input text for
speech synthesis.</p></td>
</tr>
<tr class="even">
<td><code
id="polly_describe_voices_:_LanguageCode">LanguageCode</code></td>
<td><p>The language identification tag (ISO 639 code for the language
name-ISO 3166 country code) for filtering the list of voices returned.
If you don't specify this optional parameter, all available voices are
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="polly_describe_voices_:_IncludeAdditionalLanguageCodes">IncludeAdditionalLanguageCodes</code></td>
<td><p>Boolean value indicating whether to return any bilingual voices
that use the specified language as an additional language. For instance,
if you request all languages that use US English (es-US), and there is
an Italian voice that speaks both Italian (it-IT) and US English, that
voice will be included if you specify <code>yes</code> but not if you
specify <code>no</code>.</p></td>
</tr>
<tr class="even">
<td><code id="polly_describe_voices_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token returned from the previous
<code>describe_voices</code> operation. If present, this indicates where
to continue the listing.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Voices = list(
        list(
          Gender = "Female"|"Male",
          Id = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Gabrielle"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kevin"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Olivia"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu"|"Aria"|"Ayanda"|"Arlet"|"Hannah"|"Arthur"|"Daniel"|"Liam"|"Pedro"|"Kajal"|"Hiujin"|"Laura"|"Elin"|"Ida"|"Suvi"|"Ola"|"Hala"|"Andres"|"Sergio"|"Remi"|"Adriano"|"Thiago"|"Ruth"|"Stephen"|"Kazuha"|"Tomoko",
          LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI",
          LanguageName = "string",
          Name = "string",
          AdditionalLanguageCodes = list(
            "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI"
          ),
          SupportedEngines = list(
            "standard"|"neural"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_voices(
      Engine = "standard"|"neural",
      LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI",
      IncludeAdditionalLanguageCodes = TRUE|FALSE,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # Returns the list of voices that are available for use when requesting
    # speech synthesis. Displayed languages are those within the specified
    # language code. If no language code is specified, voices for all
    # available languages are displayed.
    svc$describe_voices(
      LanguageCode = "en-GB"
    )

    ## End(Not run)
