<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonConnectCampaignService

### Description

Provide APIs to create and manage Amazon Connect Campaigns.

### Usage

    connectcampaignservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connectcampaignservice_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- connectcampaignservice(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_create_campaign/"> create_campaign </a></td>
<td style="text-align: left;">Creates a campaign for the specified
Amazon Connect account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_delete_campaign/"> delete_campaign </a></td>
<td style="text-align: left;">Deletes a campaign from the specified
Amazon Connect account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_delete_connect_instance_config/"> delete_connect_instance_config </a></td>
<td style="text-align: left;">Deletes a connect instance config from the
specified AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_delete_instance_onboarding_job/"> delete_instance_onboarding_job </a></td>
<td style="text-align: left;">Delete the Connect Campaigns onboarding
job for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_describe_campaign/"> describe_campaign </a></td>
<td style="text-align: left;">Describes the specific campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_get_campaign_state/"> get_campaign_state </a></td>
<td style="text-align: left;">Get state of a campaign for the specified
Amazon Connect account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_get_campaign_state_batch/"> get_campaign_state_batch </a></td>
<td style="text-align: left;">Get state of campaigns for the specified
Amazon Connect account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_get_connect_instance_config/"> get_connect_instance_config </a></td>
<td style="text-align: left;">Get the specific Connect instance
config</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_get_instance_onboarding_job_status/"> get_instance_onboarding_job_status </a></td>
<td style="text-align: left;">Get the specific instance onboarding job
status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_list_campaigns/"> list_campaigns </a></td>
<td style="text-align: left;">Provides summary information about the
campaigns under the specified Amazon Connect account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags for a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_pause_campaign/"> pause_campaign </a></td>
<td style="text-align: left;">Pauses a campaign for the specified Amazon
Connect account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_put_dial_request_batch/"> put_dial_request_batch </a></td>
<td style="text-align: left;">Creates dials requests for the specified
campaign Amazon Connect account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_resume_campaign/"> resume_campaign </a></td>
<td style="text-align: left;">Stops a campaign for the specified Amazon
Connect account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_start_campaign/"> start_campaign </a></td>
<td style="text-align: left;">Starts a campaign for the specified Amazon
Connect account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_start_instance_onboarding_job/"> start_instance_onboarding_job </a></td>
<td style="text-align: left;">Onboard the specific Amazon Connect
instance to Connect Campaigns</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_stop_campaign/"> stop_campaign </a></td>
<td style="text-align: left;">Stops a campaign for the specified Amazon
Connect account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tag a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Untag a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_update_campaign_dialer_config/"> update_campaign_dialer_config </a></td>
<td style="text-align: left;">Updates the dialer config of a
campaign</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectcampaignservice_update_campaign_name/"> update_campaign_name </a></td>
<td style="text-align: left;">Updates the name of a campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectcampaignservice_update_campaign_outbound_call_config/"> update_campaign_outbound_call_config </a></td>
<td style="text-align: left;">Updates the outbound call config of a
campaign</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- connectcampaignservice()
    svc$create_campaign(
      Foo = 123
    )

    ## End(Not run)
