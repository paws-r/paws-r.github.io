<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_get_lexicon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the content of the specified pronunciation lexicon stored in an Amazon Web Services Region

### Description

Returns the content of the specified pronunciation lexicon stored in an
Amazon Web Services Region. For more information, see [Managing
Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

### Usage

    polly_get_lexicon(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_get_lexicon_:_Name">Name</code></td>
<td><p>[required] Name of the lexicon.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Lexicon = list(
        Content = "string",
        Name = "string"
      ),
      LexiconAttributes = list(
        Alphabet = "string",
        LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"|"en-NZ"|"en-ZA"|"ca-ES"|"de-AT"|"yue-CN"|"ar-AE"|"fi-FI",
        LastModified = as.POSIXct(
          "2015-01-01"
        ),
        LexiconArn = "string",
        LexemesCount = 123,
        Size = 123
      )
    )

### Request syntax

    svc$get_lexicon(
      Name = "string"
    )

### Examples

    ## Not run: 
    # Returns the content of the specified pronunciation lexicon stored in an
    # AWS Region.
    svc$get_lexicon(
      Name = ""
    )

    ## End(Not run)
