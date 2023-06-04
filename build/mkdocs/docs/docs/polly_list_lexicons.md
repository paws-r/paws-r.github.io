<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_list_lexicons</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of pronunciation lexicons stored in an Amazon Web Services Region

### Description

Returns a list of pronunciation lexicons stored in an Amazon Web
Services Region. For more information, see [Managing
Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

### Usage

    polly_list_lexicons(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_list_lexicons_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token returned from previous
<code>list_lexicons</code> operation. If present, indicates where to
continue the list of lexicons.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Lexicons = list(
        list(
          Name = "string",
          Attributes = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lexicons(
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # Returns a list of pronunciation lexicons stored in an AWS Region.
    svc$list_lexicons()

    ## End(Not run)
