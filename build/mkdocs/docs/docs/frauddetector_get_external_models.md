<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_external_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the details for one or more Amazon SageMaker models that have been imported into the service

### Description

Gets the details for one or more Amazon SageMaker models that have been
imported into the service. This is a paginated API. If you provide a
null `maxResults`, this actions retrieves a maximum of 10 records per
page. If you provide a `maxResults`, the value must be between 5 and 10.
To get the next page results, provide the pagination token from the
`GetExternalModelsResult` as part of your request. A null pagination
token fetches the records from the beginning.

### Usage

    frauddetector_get_external_models(modelEndpoint, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_external_models_:_modelEndpoint">modelEndpoint</code></td>
<td><p>The Amazon SageMaker model endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_external_models_:_nextToken">nextToken</code></td>
<td><p>The next page token for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_external_models_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      externalModels = list(
        list(
          modelEndpoint = "string",
          modelSource = "SAGEMAKER",
          invokeModelEndpointRoleArn = "string",
          inputConfiguration = list(
            eventTypeName = "string",
            format = "TEXT_CSV"|"APPLICATION_JSON",
            useEventVariables = TRUE|FALSE,
            jsonInputTemplate = "string",
            csvInputTemplate = "string"
          ),
          outputConfiguration = list(
            format = "TEXT_CSV"|"APPLICATION_JSONLINES",
            jsonKeyToVariableMap = list(
              "string"
            ),
            csvIndexToVariableMap = list(
              "string"
            )
          ),
          modelEndpointStatus = "ASSOCIATED"|"DISSOCIATED",
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_external_models(
      modelEndpoint = "string",
      nextToken = "string",
      maxResults = 123
    )
