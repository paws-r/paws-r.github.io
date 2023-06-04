<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets one or more models

### Description

Gets one or more models. Gets all models for the Amazon Web Services
account if no model type and no model id provided. Gets all models for
the Amazon Web Services account and model type, if the model type is
specified but model id is not provided. Gets a specific model if (model
type, model id) tuple is specified.

This is a paginated API. If you provide a null `maxResults`, this action
retrieves a maximum of 10 records per page. If you provide a
`maxResults`, the value must be between 1 and 10. To get the next page
results, provide the pagination token from the response as part of your
request. A null pagination token fetches the records from the beginning.

### Usage

    frauddetector_get_models(modelId, modelType, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_models_:_modelId">modelId</code></td>
<td><p>The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_models_:_modelType">modelType</code></td>
<td><p>The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_models_:_nextToken">nextToken</code></td>
<td><p>The next token for the subsequent request.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_models_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      models = list(
        list(
          modelId = "string",
          modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
          description = "string",
          eventTypeName = "string",
          createdTime = "string",
          lastUpdatedTime = "string",
          arn = "string"
        )
      )
    )

### Request syntax

    svc$get_models(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      nextToken = "string",
      maxResults = 123
    )
