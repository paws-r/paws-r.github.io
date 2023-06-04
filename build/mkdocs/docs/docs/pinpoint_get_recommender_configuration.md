<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_recommender_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an Amazon Pinpoint configuration for a recommender model

### Description

Retrieves information about an Amazon Pinpoint configuration for a
recommender model.

### Usage

    pinpoint_get_recommender_configuration(RecommenderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_recommender_configuration_:_RecommenderId">RecommenderId</code></td>
<td><p>[required] The unique identifier for the recommender model
configuration. This identifier is displayed as the <strong>Recommender
ID</strong> on the Amazon Pinpoint console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecommenderConfigurationResponse = list(
        Attributes = list(
          "string"
        ),
        CreationDate = "string",
        Description = "string",
        Id = "string",
        LastModifiedDate = "string",
        Name = "string",
        RecommendationProviderIdType = "string",
        RecommendationProviderRoleArn = "string",
        RecommendationProviderUri = "string",
        RecommendationTransformerUri = "string",
        RecommendationsDisplayName = "string",
        RecommendationsPerMessage = 123
      )
    )

### Request syntax

    svc$get_recommender_configuration(
      RecommenderId = "string"
    )
