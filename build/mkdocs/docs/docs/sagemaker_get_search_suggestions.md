<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_get_search_suggestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An auto-complete API for the search functionality in the SageMaker console

### Description

An auto-complete API for the search functionality in the SageMaker
console. It returns suggestions of possible matches for the property
name to use in `search` queries. Provides suggestions for
`HyperParameters`, `Tags`, and `Metrics`.

### Usage

    sagemaker_get_search_suggestions(Resource, SuggestionQuery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_get_search_suggestions_:_Resource">Resource</code></td>
<td><p>[required] The name of the SageMaker resource to search
for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_get_search_suggestions_:_SuggestionQuery">SuggestionQuery</code></td>
<td><p>Limits the property names that are included in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PropertyNameSuggestions = list(
        list(
          PropertyName = "string"
        )
      )
    )

### Request syntax

    svc$get_search_suggestions(
      Resource = "TrainingJob"|"Experiment"|"ExperimentTrial"|"ExperimentTrialComponent"|"Endpoint"|"ModelPackage"|"ModelPackageGroup"|"Pipeline"|"PipelineExecution"|"FeatureGroup"|"Project"|"FeatureMetadata"|"HyperParameterTuningJob"|"ModelCard"|"Model",
      SuggestionQuery = list(
        PropertyNameQuery = list(
          PropertyNameHint = "string"
        )
      )
    )
