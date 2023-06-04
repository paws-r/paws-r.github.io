<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_delete_analysis_scheme</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an analysis scheme

### Description

Deletes an analysis scheme. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
target="_blank">Configuring Analysis Schemes</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_delete_analysis_scheme(DomainName, AnalysisSchemeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_delete_analysis_scheme_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_delete_analysis_scheme_:_AnalysisSchemeName">AnalysisSchemeName</code></td>
<td><p>[required] The name of the analysis scheme you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnalysisScheme = list(
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

### Request syntax

    svc$delete_analysis_scheme(
      DomainName = "string",
      AnalysisSchemeName = "string"
    )
