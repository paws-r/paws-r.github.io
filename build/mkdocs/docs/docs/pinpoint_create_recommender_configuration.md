<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_recommender_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Pinpoint configuration for a recommender model

### Description

Creates an Amazon Pinpoint configuration for a recommender model.

### Usage

    pinpoint_create_recommender_configuration(
      CreateRecommenderConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_recommender_configuration_:_CreateRecommenderConfiguration">CreateRecommenderConfiguration</code></td>
<td><p>[required]</p></td>
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

    svc$create_recommender_configuration(
      CreateRecommenderConfiguration = list(
        Attributes = list(
          "string"
        ),
        Description = "string",
        Name = "string",
        RecommendationProviderIdType = "string",
        RecommendationProviderRoleArn = "string",
        RecommendationProviderUri = "string",
        RecommendationTransformerUri = "string",
        RecommendationsDisplayName = "string",
        RecommendationsPerMessage = 123
      )
    )
