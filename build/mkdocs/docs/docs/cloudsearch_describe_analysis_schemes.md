<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_analysis_schemes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the analysis schemes configured for a domain

### Description

Gets the analysis schemes configured for a domain. An analysis scheme
defines language-specific text processing options for a `text` field.
Can be limited to specific analysis schemes by name. By default, shows
all analysis schemes and includes any pending changes to the
configuration. Set the `Deployed` option to `true` to show the active
configuration and exclude pending changes. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
target="_blank">Configuring Analysis Schemes</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_analysis_schemes(DomainName, AnalysisSchemeNames,
      Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_analysis_schemes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_analysis_schemes_:_AnalysisSchemeNames">AnalysisSchemeNames</code></td>
<td><p>The analysis schemes you want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudsearch_describe_analysis_schemes_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnalysisSchemes = list(
        list(
          Options = list(
            AnalysisSchemeName = "string",
            AnalysisSchemeLanguage = "ar"|"bg"|"ca"|"cs"|"da"|"de"|"el"|"en"|"es"|"eu"|"fa"|"fi"|"fr"|"ga"|"gl"|"he"|"hi"|"hu"|"hy"|"id"|"it"|"ja"|"ko"|"lv"|"mul"|"nl"|"no"|"pt"|"ro"|"ru"|"sv"|"th"|"tr"|"zh-Hans"|"zh-Hant",
            AnalysisOptions = list(
              Synonyms = "string",
              Stopwords = "string",
              StemmingDictionary = "string",
              JapaneseTokenizationDictionary = "string",
              AlgorithmicStemming = "none"|"minimal"|"light"|"full"
            )
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
            PendingDeletion = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$describe_analysis_schemes(
      DomainName = "string",
      AnalysisSchemeNames = list(
        "string"
      ),
      Deployed = TRUE|FALSE
    )
