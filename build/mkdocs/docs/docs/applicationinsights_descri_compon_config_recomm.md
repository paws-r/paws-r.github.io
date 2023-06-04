<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_component_configuration_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the recommended monitoring configuration of the component

### Description

Describes the recommended monitoring configuration of the component.

### Usage

    applicationinsights_describe_component_configuration_recommendation(
      ResourceGroupName, ComponentName, Tier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_component_configuration_recommendation_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_describe_component_configuration_recommendation_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_describe_component_configuration_recommendation_:_Tier">Tier</code></td>
<td><p>[required] The tier of the application component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComponentConfiguration = "string"
    )

### Request syntax

    svc$describe_component_configuration_recommendation(
      ResourceGroupName = "string",
      ComponentName = "string",
      Tier = "CUSTOM"|"DEFAULT"|"DOT_NET_CORE"|"DOT_NET_WORKER"|"DOT_NET_WEB_TIER"|"DOT_NET_WEB"|"SQL_SERVER"|"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"|"MYSQL"|"POSTGRESQL"|"JAVA_JMX"|"ORACLE"|"SAP_HANA_MULTI_NODE"|"SAP_HANA_SINGLE_NODE"|"SAP_HANA_HIGH_AVAILABILITY"|"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"|"SHAREPOINT"|"ACTIVE_DIRECTORY"
    )
