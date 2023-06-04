<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon SageMaker Service

### Description

Provides APIs for creating and managing SageMaker resources.

Other Resources:

-   [SageMaker Developer
    Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

-   [Amazon Augmented AI Runtime API
    Reference](https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)

### Usage

    sagemaker(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_:_config">config</code></td>
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

    svc <- sagemaker(
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
<td style="text-align: left;"><a href="../sagemaker_add_association/"> add_association </a></td>
<td style="text-align: left;">Creates an association between the source
and the destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified SageMaker resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_associate_trial_component/"> associate_trial_component </a></td>
<td style="text-align: left;">Associates a trial component with a
trial</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_batch_describe_model_package/"> batch_describe_model_package </a></td>
<td style="text-align: left;">This action batch describes a list of
versioned model packages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_action/"> create_action </a></td>
<td style="text-align: left;">Creates an action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_algorithm/"> create_algorithm </a></td>
<td style="text-align: left;">Create a machine learning algorithm that
you can use in SageMaker and list in the Amazon Web Services
Marketplace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_app/"> create_app </a></td>
<td style="text-align: left;">Creates a running app for the specified
UserProfile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_app_image_config/"> create_app_image_config </a></td>
<td style="text-align: left;">Creates a configuration for running a
SageMaker image as a KernelGateway app</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_artifact/"> create_artifact </a></td>
<td style="text-align: left;">Creates an artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_auto_ml_job/"> create_auto_ml_job </a></td>
<td style="text-align: left;">Creates an Autopilot job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_auto_ml_job_v2/"> create_auto_ml_job_v2 </a></td>
<td style="text-align: left;">Creates an Amazon SageMaker AutoML job
that uses non-tabular data such as images or text for Computer Vision or
Natural Language Processing problems</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_code_repository/"> create_code_repository </a></td>
<td style="text-align: left;">Creates a Git repository as a resource in
your SageMaker account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_compilation_job/"> create_compilation_job </a></td>
<td style="text-align: left;">Starts a model compilation job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_context/"> create_context </a></td>
<td style="text-align: left;">Creates a context</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_data_quality_job_definition/"> create_data_quality_job_definition </a></td>
<td style="text-align: left;">Creates a definition for a job that
monitors data quality and drift</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_device_fleet/"> create_device_fleet </a></td>
<td style="text-align: left;">Creates a device fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a Domain used by Amazon SageMaker
Studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_edge_deployment_plan/"> create_edge_deployment_plan </a></td>
<td style="text-align: left;">Creates an edge deployment plan,
consisting of multiple stages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_edge_deployment_stage/"> create_edge_deployment_stage </a></td>
<td style="text-align: left;">Creates a new stage in an existing edge
deployment plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_edge_packaging_job/"> create_edge_packaging_job </a></td>
<td style="text-align: left;">Starts a SageMaker Edge Manager model
packaging job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_endpoint/"> create_endpoint </a></td>
<td style="text-align: left;">Creates an endpoint using the endpoint
configuration specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_endpoint_config/"> create_endpoint_config </a></td>
<td style="text-align: left;">Creates an endpoint configuration that
SageMaker hosting services uses to deploy models</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_experiment/"> create_experiment </a></td>
<td style="text-align: left;">Creates a SageMaker experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_feature_group/"> create_feature_group </a></td>
<td style="text-align: left;">Create a new FeatureGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_flow_definition/"> create_flow_definition </a></td>
<td style="text-align: left;">Creates a flow definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_hub/"> create_hub </a></td>
<td style="text-align: left;">Create a hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_human_task_ui/"> create_human_task_ui </a></td>
<td style="text-align: left;">Defines the settings you will use for the
human review workflow user interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_hyper_parameter_tuning_job/"> create_hyper_parameter_tuning_job </a></td>
<td style="text-align: left;">Starts a hyperparameter tuning job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_image/"> create_image </a></td>
<td style="text-align: left;">Creates a custom SageMaker image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_image_version/"> create_image_version </a></td>
<td style="text-align: left;">Creates a version of the SageMaker image
specified by ImageName</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_inference_experiment/"> create_inference_experiment </a></td>
<td style="text-align: left;">Creates an inference experiment using the
configurations specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_inference_recommendations_job/"> create_inference_recommendations_job </a></td>
<td style="text-align: left;">Starts a recommendation job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_labeling_job/"> create_labeling_job </a></td>
<td style="text-align: left;">Creates a job that uses workers to label
the data objects in your input dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_model/"> create_model </a></td>
<td style="text-align: left;">Creates a model in SageMaker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_model_bias_job_definition/"> create_model_bias_job_definition </a></td>
<td style="text-align: left;">Creates the definition for a model bias
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_model_card/"> create_model_card </a></td>
<td style="text-align: left;">Creates an Amazon SageMaker Model
Card</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_model_card_export_job/"> create_model_card_export_job </a></td>
<td style="text-align: left;">Creates an Amazon SageMaker Model Card
export job</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_create_model_explainability_job_definition/"> create_model_explainability_job_definition </a></td>
<td style="text-align: left;">Creates the definition for a model
explainability job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_model_package/"> create_model_package </a></td>
<td style="text-align: left;">Creates a model package that you can use
to create SageMaker models or list on Amazon Web Services Marketplace,
or a versioned model that is part of a model group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_model_package_group/"> create_model_package_group </a></td>
<td style="text-align: left;">Creates a model group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_model_quality_job_definition/"> create_model_quality_job_definition </a></td>
<td style="text-align: left;">Creates a definition for a job that
monitors model quality and drift</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_monitoring_schedule/"> create_monitoring_schedule </a></td>
<td style="text-align: left;">Creates a schedule that regularly starts
Amazon SageMaker Processing Jobs to monitor the data captured for an
Amazon SageMaker Endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_notebook_instance/"> create_notebook_instance </a></td>
<td style="text-align: left;">Creates an SageMaker notebook
instance</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_create_notebook_instance_lifecycle_config/"> create_notebook_instance_lifecycle_config </a></td>
<td style="text-align: left;">Creates a lifecycle configuration that you
can associate with a notebook instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_pipeline/"> create_pipeline </a></td>
<td style="text-align: left;">Creates a pipeline using a JSON pipeline
definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_presigned_domain_url/"> create_presigned_domain_url </a></td>
<td style="text-align: left;">Creates a URL for a specified UserProfile
in a Domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_create_presigned_notebook_instance_url/"> create_presigned_notebook_instance_url </a></td>
<td style="text-align: left;">Returns a URL that you can use to connect
to the Jupyter server from a notebook instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_processing_job/"> create_processing_job </a></td>
<td style="text-align: left;">Creates a processing job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a machine learning (ML) project
that can contain one or more templates that set up an ML pipeline from
training to deploying an approved model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_space/"> create_space </a></td>
<td style="text-align: left;">Creates a space used for real time
collaboration in a Domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_studio_lifecycle_config/"> create_studio_lifecycle_config </a></td>
<td style="text-align: left;">Creates a new Studio Lifecycle
Configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_training_job/"> create_training_job </a></td>
<td style="text-align: left;">Starts a model training job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_transform_job/"> create_transform_job </a></td>
<td style="text-align: left;">Starts a transform job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_trial/"> create_trial </a></td>
<td style="text-align: left;">Creates an SageMaker trial</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_trial_component/"> create_trial_component </a></td>
<td style="text-align: left;">Creates a trial component, which is a
stage of a machine learning trial</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_user_profile/"> create_user_profile </a></td>
<td style="text-align: left;">Creates a user profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_create_workforce/"> create_workforce </a></td>
<td style="text-align: left;">Use this operation to create a
workforce</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_create_workteam/"> create_workteam </a></td>
<td style="text-align: left;">Creates a new work team for labeling your
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_action/"> delete_action </a></td>
<td style="text-align: left;">Deletes an action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_algorithm/"> delete_algorithm </a></td>
<td style="text-align: left;">Removes the specified algorithm from your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_app/"> delete_app </a></td>
<td style="text-align: left;">Used to stop and delete an app</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_app_image_config/"> delete_app_image_config </a></td>
<td style="text-align: left;">Deletes an AppImageConfig</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_artifact/"> delete_artifact </a></td>
<td style="text-align: left;">Deletes an artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_association/"> delete_association </a></td>
<td style="text-align: left;">Deletes an association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_code_repository/"> delete_code_repository </a></td>
<td style="text-align: left;">Deletes the specified Git repository from
your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_context/"> delete_context </a></td>
<td style="text-align: left;">Deletes an context</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_data_quality_job_definition/"> delete_data_quality_job_definition </a></td>
<td style="text-align: left;">Deletes a data quality monitoring job
definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_device_fleet/"> delete_device_fleet </a></td>
<td style="text-align: left;">Deletes a fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Used to delete a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_edge_deployment_plan/"> delete_edge_deployment_plan </a></td>
<td style="text-align: left;">Deletes an edge deployment plan if (and
only if) all the stages in the plan are inactive or there are no stages
in the plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_edge_deployment_stage/"> delete_edge_deployment_stage </a></td>
<td style="text-align: left;">Delete a stage in an edge deployment plan
if (and only if) the stage is inactive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Deletes an endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_endpoint_config/"> delete_endpoint_config </a></td>
<td style="text-align: left;">Deletes an endpoint configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_experiment/"> delete_experiment </a></td>
<td style="text-align: left;">Deletes an SageMaker experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_feature_group/"> delete_feature_group </a></td>
<td style="text-align: left;">Delete the FeatureGroup and any data that
was written to the OnlineStore of the FeatureGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_flow_definition/"> delete_flow_definition </a></td>
<td style="text-align: left;">Deletes the specified flow definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_hub/"> delete_hub </a></td>
<td style="text-align: left;">Delete a hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_hub_content/"> delete_hub_content </a></td>
<td style="text-align: left;">Delete the contents of a hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_human_task_ui/"> delete_human_task_ui </a></td>
<td style="text-align: left;">Use this operation to delete a human task
user interface (worker task template)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_image/"> delete_image </a></td>
<td style="text-align: left;">Deletes a SageMaker image and all versions
of the image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_image_version/"> delete_image_version </a></td>
<td style="text-align: left;">Deletes a version of a SageMaker
image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_inference_experiment/"> delete_inference_experiment </a></td>
<td style="text-align: left;">Deletes an inference experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_model/"> delete_model </a></td>
<td style="text-align: left;">Deletes a model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_model_bias_job_definition/"> delete_model_bias_job_definition </a></td>
<td style="text-align: left;">Deletes an Amazon SageMaker model bias job
definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_model_card/"> delete_model_card </a></td>
<td style="text-align: left;">Deletes an Amazon SageMaker Model
Card</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_delete_model_explainability_job_definition/"> delete_model_explainability_job_definition </a></td>
<td style="text-align: left;">Deletes an Amazon SageMaker model
explainability job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_model_package/"> delete_model_package </a></td>
<td style="text-align: left;">Deletes a model package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_model_package_group/"> delete_model_package_group </a></td>
<td style="text-align: left;">Deletes the specified model group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_model_package_group_policy/"> delete_model_package_group_policy </a></td>
<td style="text-align: left;">Deletes a model group resource policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_model_quality_job_definition/"> delete_model_quality_job_definition </a></td>
<td style="text-align: left;">Deletes the secified model quality
monitoring job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_monitoring_schedule/"> delete_monitoring_schedule </a></td>
<td style="text-align: left;">Deletes a monitoring schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_notebook_instance/"> delete_notebook_instance </a></td>
<td style="text-align: left;">Deletes an SageMaker notebook
instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_delete_notebook_instance_lifecycle_config/"> delete_notebook_instance_lifecycle_config </a></td>
<td style="text-align: left;">Deletes a notebook instance lifecycle
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_pipeline/"> delete_pipeline </a></td>
<td style="text-align: left;">Deletes a pipeline if there are no running
instances of the pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Delete the specified project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_space/"> delete_space </a></td>
<td style="text-align: left;">Used to delete a space</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_studio_lifecycle_config/"> delete_studio_lifecycle_config </a></td>
<td style="text-align: left;">Deletes the Studio Lifecycle
Configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes the specified tags from an
SageMaker resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_trial/"> delete_trial </a></td>
<td style="text-align: left;">Deletes the specified trial</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_trial_component/"> delete_trial_component </a></td>
<td style="text-align: left;">Deletes the specified trial component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_user_profile/"> delete_user_profile </a></td>
<td style="text-align: left;">Deletes a user profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_delete_workforce/"> delete_workforce </a></td>
<td style="text-align: left;">Use this operation to delete a
workforce</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_delete_workteam/"> delete_workteam </a></td>
<td style="text-align: left;">Deletes an existing work team</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_deregister_devices/"> deregister_devices </a></td>
<td style="text-align: left;">Deregisters the specified devices</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_action/"> describe_action </a></td>
<td style="text-align: left;">Describes an action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_algorithm/"> describe_algorithm </a></td>
<td style="text-align: left;">Returns a description of the specified
algorithm that is in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_app/"> describe_app </a></td>
<td style="text-align: left;">Describes the app</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_app_image_config/"> describe_app_image_config </a></td>
<td style="text-align: left;">Describes an AppImageConfig</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_artifact/"> describe_artifact </a></td>
<td style="text-align: left;">Describes an artifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_auto_ml_job/"> describe_auto_ml_job </a></td>
<td style="text-align: left;">Returns information about an Amazon
SageMaker AutoML job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_auto_ml_job_v2/"> describe_auto_ml_job_v2 </a></td>
<td style="text-align: left;">Returns information about an Amazon
SageMaker AutoML V2 job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_code_repository/"> describe_code_repository </a></td>
<td style="text-align: left;">Gets details about the specified Git
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_compilation_job/"> describe_compilation_job </a></td>
<td style="text-align: left;">Returns information about a model
compilation job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_context/"> describe_context </a></td>
<td style="text-align: left;">Describes a context</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_data_quality_job_definition/"> describe_data_quality_job_definition </a></td>
<td style="text-align: left;">Gets the details of a data quality
monitoring job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_device/"> describe_device </a></td>
<td style="text-align: left;">Describes the device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_device_fleet/"> describe_device_fleet </a></td>
<td style="text-align: left;">A description of the fleet the device
belongs to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">The description of the domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_edge_deployment_plan/"> describe_edge_deployment_plan </a></td>
<td style="text-align: left;">Describes an edge deployment plan with
deployment status per stage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_edge_packaging_job/"> describe_edge_packaging_job </a></td>
<td style="text-align: left;">A description of edge packaging jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_endpoint/"> describe_endpoint </a></td>
<td style="text-align: left;">Returns the description of an
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_endpoint_config/"> describe_endpoint_config </a></td>
<td style="text-align: left;">Returns the description of an endpoint
configuration created using the CreateEndpointConfig API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_experiment/"> describe_experiment </a></td>
<td style="text-align: left;">Provides a list of an experiment's
properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_feature_group/"> describe_feature_group </a></td>
<td style="text-align: left;">Use this operation to describe a
FeatureGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_feature_metadata/"> describe_feature_metadata </a></td>
<td style="text-align: left;">Shows the metadata for a feature within a
feature group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_flow_definition/"> describe_flow_definition </a></td>
<td style="text-align: left;">Returns information about the specified
flow definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_hub/"> describe_hub </a></td>
<td style="text-align: left;">Describe a hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_hub_content/"> describe_hub_content </a></td>
<td style="text-align: left;">Describe the content of a hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_human_task_ui/"> describe_human_task_ui </a></td>
<td style="text-align: left;">Returns information about the requested
human task user interface (worker task template)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_hyper_parameter_tuning_job/"> describe_hyper_parameter_tuning_job </a></td>
<td style="text-align: left;">Returns a description of a hyperparameter
tuning job, depending on the fields selected</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_image/"> describe_image </a></td>
<td style="text-align: left;">Describes a SageMaker image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_image_version/"> describe_image_version </a></td>
<td style="text-align: left;">Describes a version of a SageMaker
image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_inference_experiment/"> describe_inference_experiment </a></td>
<td style="text-align: left;">Returns details about an inference
experiment</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_describe_inference_recommendations_job/"> describe_inference_recommendations_job </a></td>
<td style="text-align: left;">Provides the results of the Inference
Recommender job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_labeling_job/"> describe_labeling_job </a></td>
<td style="text-align: left;">Gets information about a labeling job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_lineage_group/"> describe_lineage_group </a></td>
<td style="text-align: left;">Provides a list of properties for the
requested lineage group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_model/"> describe_model </a></td>
<td style="text-align: left;">Describes a model that you created using
the CreateModel API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_model_bias_job_definition/"> describe_model_bias_job_definition </a></td>
<td style="text-align: left;">Returns a description of a model bias job
definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_model_card/"> describe_model_card </a></td>
<td style="text-align: left;">Describes the content, creation time, and
security configuration of an Amazon SageMaker Model Card</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_model_card_export_job/"> describe_model_card_export_job </a></td>
<td style="text-align: left;">Describes an Amazon SageMaker Model Card
export job</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_describe_model_explainability_job_definition/"> describe_model_explainability_job_definition </a></td>
<td style="text-align: left;">Returns a description of a model
explainability job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_model_package/"> describe_model_package </a></td>
<td style="text-align: left;">Returns a description of the specified
model package, which is used to create SageMaker models or list them on
Amazon Web Services Marketplace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_model_package_group/"> describe_model_package_group </a></td>
<td style="text-align: left;">Gets a description for the specified model
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_model_quality_job_definition/"> describe_model_quality_job_definition </a></td>
<td style="text-align: left;">Returns a description of a model quality
job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_monitoring_schedule/"> describe_monitoring_schedule </a></td>
<td style="text-align: left;">Describes the schedule for a monitoring
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_notebook_instance/"> describe_notebook_instance </a></td>
<td style="text-align: left;">Returns information about a notebook
instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_describe_notebook_instance_lifecycle_config/"> describe_notebook_instance_lifecycle_config </a></td>
<td style="text-align: left;">Returns a description of a notebook
instance lifecycle configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_pipeline/"> describe_pipeline </a></td>
<td style="text-align: left;">Describes the details of a pipeline</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_describe_pipeline_definition_for_execution/"> describe_pipeline_definition_for_execution </a></td>
<td style="text-align: left;">Describes the details of an execution's
pipeline definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_pipeline_execution/"> describe_pipeline_execution </a></td>
<td style="text-align: left;">Describes the details of a pipeline
execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_processing_job/"> describe_processing_job </a></td>
<td style="text-align: left;">Returns a description of a processing
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_project/"> describe_project </a></td>
<td style="text-align: left;">Describes the details of a project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_space/"> describe_space </a></td>
<td style="text-align: left;">Describes the space</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_studio_lifecycle_config/"> describe_studio_lifecycle_config </a></td>
<td style="text-align: left;">Describes the Studio Lifecycle
Configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_subscribed_workteam/"> describe_subscribed_workteam </a></td>
<td style="text-align: left;">Gets information about a work team
provided by a vendor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_training_job/"> describe_training_job </a></td>
<td style="text-align: left;">Returns information about a training
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_transform_job/"> describe_transform_job </a></td>
<td style="text-align: left;">Returns information about a transform
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_trial/"> describe_trial </a></td>
<td style="text-align: left;">Provides a list of a trial's
properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_trial_component/"> describe_trial_component </a></td>
<td style="text-align: left;">Provides a list of a trials component's
properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_user_profile/"> describe_user_profile </a></td>
<td style="text-align: left;">Describes a user profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_describe_workforce/"> describe_workforce </a></td>
<td style="text-align: left;">Lists private workforce information,
including workforce name, Amazon Resource Name (ARN), and, if
applicable, allowed IP address ranges (CIDRs)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_describe_workteam/"> describe_workteam </a></td>
<td style="text-align: left;">Gets information about a specific work
team</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_disable_sagemaker_servicecatalog_portfolio/"> disable_sagemaker_servicecatalog_portfolio </a></td>
<td style="text-align: left;">Disables using Service Catalog in
SageMaker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_disassociate_trial_component/"> disassociate_trial_component </a></td>
<td style="text-align: left;">Disassociates a trial component from a
trial</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_enable_sagemaker_servicecatalog_portfolio/"> enable_sagemaker_servicecatalog_portfolio </a></td>
<td style="text-align: left;">Enables using Service Catalog in
SageMaker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_get_device_fleet_report/"> get_device_fleet_report </a></td>
<td style="text-align: left;">Describes a fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_get_lineage_group_policy/"> get_lineage_group_policy </a></td>
<td style="text-align: left;">The resource policy for the lineage
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_get_model_package_group_policy/"> get_model_package_group_policy </a></td>
<td style="text-align: left;">Gets a resource policy that manages access
for a model group</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_get_sagemaker_servicecatalog_portfolio_status/"> get_sagemaker_servicecatalog_portfolio_status </a></td>
<td style="text-align: left;">Gets the status of Service Catalog in
SageMaker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_get_search_suggestions/"> get_search_suggestions </a></td>
<td style="text-align: left;">An auto-complete API for the search
functionality in the SageMaker console</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_import_hub_content/"> import_hub_content </a></td>
<td style="text-align: left;">Import hub content</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_actions/"> list_actions </a></td>
<td style="text-align: left;">Lists the actions in your account and
their properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_algorithms/"> list_algorithms </a></td>
<td style="text-align: left;">Lists the machine learning algorithms that
have been created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_aliases/"> list_aliases </a></td>
<td style="text-align: left;">Lists the aliases of a specified image or
image version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_app_image_configs/"> list_app_image_configs </a></td>
<td style="text-align: left;">Lists the AppImageConfigs in your account
and their properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_apps/"> list_apps </a></td>
<td style="text-align: left;">Lists apps</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_artifacts/"> list_artifacts </a></td>
<td style="text-align: left;">Lists the artifacts in your account and
their properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_associations/"> list_associations </a></td>
<td style="text-align: left;">Lists the associations in your account and
their properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_auto_ml_jobs/"> list_auto_ml_jobs </a></td>
<td style="text-align: left;">Request a list of jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_candidates_for_auto_ml_job/"> list_candidates_for_auto_ml_job </a></td>
<td style="text-align: left;">List the candidates created for the
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_code_repositories/"> list_code_repositories </a></td>
<td style="text-align: left;">Gets a list of the Git repositories in
your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_compilation_jobs/"> list_compilation_jobs </a></td>
<td style="text-align: left;">Lists model compilation jobs that satisfy
various filters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_contexts/"> list_contexts </a></td>
<td style="text-align: left;">Lists the contexts in your account and
their properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_data_quality_job_definitions/"> list_data_quality_job_definitions </a></td>
<td style="text-align: left;">Lists the data quality job definitions in
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_device_fleets/"> list_device_fleets </a></td>
<td style="text-align: left;">Returns a list of devices in the
fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_devices/"> list_devices </a></td>
<td style="text-align: left;">A list of devices</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Lists the domains</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_edge_deployment_plans/"> list_edge_deployment_plans </a></td>
<td style="text-align: left;">Lists all edge deployment plans</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_edge_packaging_jobs/"> list_edge_packaging_jobs </a></td>
<td style="text-align: left;">Returns a list of edge packaging jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_endpoint_configs/"> list_endpoint_configs </a></td>
<td style="text-align: left;">Lists endpoint configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_endpoints/"> list_endpoints </a></td>
<td style="text-align: left;">Lists endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_experiments/"> list_experiments </a></td>
<td style="text-align: left;">Lists all the experiments in your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_feature_groups/"> list_feature_groups </a></td>
<td style="text-align: left;">List FeatureGroups based on given filter
and order</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_flow_definitions/"> list_flow_definitions </a></td>
<td style="text-align: left;">Returns information about the flow
definitions in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_hub_contents/"> list_hub_contents </a></td>
<td style="text-align: left;">List the contents of a hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_hub_content_versions/"> list_hub_content_versions </a></td>
<td style="text-align: left;">List hub content versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_hubs/"> list_hubs </a></td>
<td style="text-align: left;">List all existing hubs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_human_task_uis/"> list_human_task_uis </a></td>
<td style="text-align: left;">Returns information about the human task
user interfaces in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_hyper_parameter_tuning_jobs/"> list_hyper_parameter_tuning_jobs </a></td>
<td style="text-align: left;">Gets a list of
HyperParameterTuningJobSummary objects that describe the hyperparameter
tuning jobs launched in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_images/"> list_images </a></td>
<td style="text-align: left;">Lists the images in your account and their
properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_image_versions/"> list_image_versions </a></td>
<td style="text-align: left;">Lists the versions of a specified image
and their properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_inference_experiments/"> list_inference_experiments </a></td>
<td style="text-align: left;">Returns the list of all inference
experiments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_inference_recommendations_jobs/"> list_inference_recommendations_jobs </a></td>
<td style="text-align: left;">Lists recommendation jobs that satisfy
various filters</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_list_inference_recommendations_job_steps/"> list_inference_recommendations_job_steps </a></td>
<td style="text-align: left;">Returns a list of the subtasks for an
Inference Recommender job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_labeling_jobs/"> list_labeling_jobs </a></td>
<td style="text-align: left;">Gets a list of labeling jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_labeling_jobs_for_workteam/"> list_labeling_jobs_for_workteam </a></td>
<td style="text-align: left;">Gets a list of labeling jobs assigned to a
specified work team</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_lineage_groups/"> list_lineage_groups </a></td>
<td style="text-align: left;">A list of lineage groups shared with your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_model_bias_job_definitions/"> list_model_bias_job_definitions </a></td>
<td style="text-align: left;">Lists model bias jobs definitions that
satisfy various filters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_model_card_export_jobs/"> list_model_card_export_jobs </a></td>
<td style="text-align: left;">List the export jobs for the Amazon
SageMaker Model Card</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_model_cards/"> list_model_cards </a></td>
<td style="text-align: left;">List existing model cards</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_model_card_versions/"> list_model_card_versions </a></td>
<td style="text-align: left;">List existing versions of an Amazon
SageMaker Model Card</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_list_model_explainability_job_definitions/"> list_model_explainability_job_definitions </a></td>
<td style="text-align: left;">Lists model explainability job definitions
that satisfy various filters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_model_metadata/"> list_model_metadata </a></td>
<td style="text-align: left;">Lists the domain, framework, task, and
model name of standard machine learning models found in common model
zoos</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_model_package_groups/"> list_model_package_groups </a></td>
<td style="text-align: left;">Gets a list of the model groups in your
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_model_packages/"> list_model_packages </a></td>
<td style="text-align: left;">Lists the model packages that have been
created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_model_quality_job_definitions/"> list_model_quality_job_definitions </a></td>
<td style="text-align: left;">Gets a list of model quality monitoring
job definitions in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_models/"> list_models </a></td>
<td style="text-align: left;">Lists models created with the CreateModel
API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_monitoring_alert_history/"> list_monitoring_alert_history </a></td>
<td style="text-align: left;">Gets a list of past alerts in a model
monitoring schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_monitoring_alerts/"> list_monitoring_alerts </a></td>
<td style="text-align: left;">Gets the alerts for a single monitoring
schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_monitoring_executions/"> list_monitoring_executions </a></td>
<td style="text-align: left;">Returns list of all monitoring job
executions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_monitoring_schedules/"> list_monitoring_schedules </a></td>
<td style="text-align: left;">Returns list of all monitoring
schedules</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_list_notebook_instance_lifecycle_configs/"> list_notebook_instance_lifecycle_configs </a></td>
<td style="text-align: left;">Lists notebook instance lifestyle
configurations created with the CreateNotebookInstanceLifecycleConfig
API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_notebook_instances/"> list_notebook_instances </a></td>
<td style="text-align: left;">Returns a list of the SageMaker notebook
instances in the requester's account in an Amazon Web Services
Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_pipeline_executions/"> list_pipeline_executions </a></td>
<td style="text-align: left;">Gets a list of the pipeline
executions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_pipeline_execution_steps/"> list_pipeline_execution_steps </a></td>
<td style="text-align: left;">Gets a list of PipeLineExecutionStep
objects</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_list_pipeline_parameters_for_execution/"> list_pipeline_parameters_for_execution </a></td>
<td style="text-align: left;">Gets a list of parameters for a pipeline
execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_pipelines/"> list_pipelines </a></td>
<td style="text-align: left;">Gets a list of pipelines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_processing_jobs/"> list_processing_jobs </a></td>
<td style="text-align: left;">Lists processing jobs that satisfy various
filters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_projects/"> list_projects </a></td>
<td style="text-align: left;">Gets a list of the projects in an Amazon
Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_spaces/"> list_spaces </a></td>
<td style="text-align: left;">Lists spaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_stage_devices/"> list_stage_devices </a></td>
<td style="text-align: left;">Lists devices allocated to the stage,
containing detailed device information and deployment status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_studio_lifecycle_configs/"> list_studio_lifecycle_configs </a></td>
<td style="text-align: left;">Lists the Studio Lifecycle Configurations
in your Amazon Web Services Account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_subscribed_workteams/"> list_subscribed_workteams </a></td>
<td style="text-align: left;">Gets a list of the work teams that you are
subscribed to in the Amazon Web Services Marketplace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns the tags for the specified
SageMaker resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_training_jobs/"> list_training_jobs </a></td>
<td style="text-align: left;">Lists training jobs</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_list_training_jobs_for_hyper_parameter_tuning_job/"> list_training_jobs_for_hyper_parameter_tuning_job </a></td>
<td style="text-align: left;">Gets a list of TrainingJobSummary objects
that describe the training jobs that a hyperparameter tuning job
launched</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_transform_jobs/"> list_transform_jobs </a></td>
<td style="text-align: left;">Lists transform jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_trial_components/"> list_trial_components </a></td>
<td style="text-align: left;">Lists the trial components in your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_trials/"> list_trials </a></td>
<td style="text-align: left;">Lists the trials in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_user_profiles/"> list_user_profiles </a></td>
<td style="text-align: left;">Lists user profiles</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_list_workforces/"> list_workforces </a></td>
<td style="text-align: left;">Use this operation to list all private and
vendor workforces in an Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_list_workteams/"> list_workteams </a></td>
<td style="text-align: left;">Gets a list of private work teams that you
have defined in a region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_put_model_package_group_policy/"> put_model_package_group_policy </a></td>
<td style="text-align: left;">Adds a resouce policy to control access to
a model group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_query_lineage/"> query_lineage </a></td>
<td style="text-align: left;">Use this action to inspect your lineage
and discover relationships between entities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_register_devices/"> register_devices </a></td>
<td style="text-align: left;">Register devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_render_ui_template/"> render_ui_template </a></td>
<td style="text-align: left;">Renders the UI template so that you can
preview the worker's experience</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_retry_pipeline_execution/"> retry_pipeline_execution </a></td>
<td style="text-align: left;">Retry the execution of the pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_search/"> search </a></td>
<td style="text-align: left;">Finds SageMaker resources that match a
search query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_send_pipeline_execution_step_failure/"> send_pipeline_execution_step_failure </a></td>
<td style="text-align: left;">Notifies the pipeline that the execution
of a callback step failed, along with a message describing why</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_send_pipeline_execution_step_success/"> send_pipeline_execution_step_success </a></td>
<td style="text-align: left;">Notifies the pipeline that the execution
of a callback step succeeded and provides a list of the step's output
parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_start_edge_deployment_stage/"> start_edge_deployment_stage </a></td>
<td style="text-align: left;">Starts a stage in an edge deployment
plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_start_inference_experiment/"> start_inference_experiment </a></td>
<td style="text-align: left;">Starts an inference experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_start_monitoring_schedule/"> start_monitoring_schedule </a></td>
<td style="text-align: left;">Starts a previously stopped monitoring
schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_start_notebook_instance/"> start_notebook_instance </a></td>
<td style="text-align: left;">Launches an ML compute instance with the
latest version of the libraries and attaches your ML storage volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_start_pipeline_execution/"> start_pipeline_execution </a></td>
<td style="text-align: left;">Starts a pipeline execution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_auto_ml_job/"> stop_auto_ml_job </a></td>
<td style="text-align: left;">A method for forcing a running job to shut
down</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_compilation_job/"> stop_compilation_job </a></td>
<td style="text-align: left;">Stops a model compilation job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_edge_deployment_stage/"> stop_edge_deployment_stage </a></td>
<td style="text-align: left;">Stops a stage in an edge deployment
plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_edge_packaging_job/"> stop_edge_packaging_job </a></td>
<td style="text-align: left;">Request to stop an edge packaging job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_hyper_parameter_tuning_job/"> stop_hyper_parameter_tuning_job </a></td>
<td style="text-align: left;">Stops a running hyperparameter tuning job
and all running training jobs that the tuning job launched</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_inference_experiment/"> stop_inference_experiment </a></td>
<td style="text-align: left;">Stops an inference experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_inference_recommendations_job/"> stop_inference_recommendations_job </a></td>
<td style="text-align: left;">Stops an Inference Recommender job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_labeling_job/"> stop_labeling_job </a></td>
<td style="text-align: left;">Stops a running labeling job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_monitoring_schedule/"> stop_monitoring_schedule </a></td>
<td style="text-align: left;">Stops a previously started monitoring
schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_notebook_instance/"> stop_notebook_instance </a></td>
<td style="text-align: left;">Terminates the ML compute instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_pipeline_execution/"> stop_pipeline_execution </a></td>
<td style="text-align: left;">Stops a pipeline execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_processing_job/"> stop_processing_job </a></td>
<td style="text-align: left;">Stops a processing job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_stop_training_job/"> stop_training_job </a></td>
<td style="text-align: left;">Stops a training job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_stop_transform_job/"> stop_transform_job </a></td>
<td style="text-align: left;">Stops a batch transform job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_action/"> update_action </a></td>
<td style="text-align: left;">Updates an action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_app_image_config/"> update_app_image_config </a></td>
<td style="text-align: left;">Updates the properties of an
AppImageConfig</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_artifact/"> update_artifact </a></td>
<td style="text-align: left;">Updates an artifact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_code_repository/"> update_code_repository </a></td>
<td style="text-align: left;">Updates the specified Git repository with
the specified values</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_context/"> update_context </a></td>
<td style="text-align: left;">Updates a context</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_device_fleet/"> update_device_fleet </a></td>
<td style="text-align: left;">Updates a fleet of devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_devices/"> update_devices </a></td>
<td style="text-align: left;">Updates one or more devices in a
fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_domain/"> update_domain </a></td>
<td style="text-align: left;">Updates the default settings for new user
profiles in the domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_endpoint/"> update_endpoint </a></td>
<td style="text-align: left;">Deploys the new EndpointConfig specified
in the request, switches to using newly created endpoint, and then
deletes resources provisioned for the endpoint using the previous
EndpointConfig (there is no availability loss)</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sagemaker_update_endpoint_weights_and_capacities/"> update_endpoint_weights_and_capacities </a></td>
<td style="text-align: left;">Updates variant weight of one or more
variants associated with an existing endpoint, or capacity of one
variant associated with an existing endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_experiment/"> update_experiment </a></td>
<td style="text-align: left;">Adds, updates, or removes the description
of an experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_feature_group/"> update_feature_group </a></td>
<td style="text-align: left;">Updates the feature group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_feature_metadata/"> update_feature_metadata </a></td>
<td style="text-align: left;">Updates the description and parameters of
the feature group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_hub/"> update_hub </a></td>
<td style="text-align: left;">Update a hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_image/"> update_image </a></td>
<td style="text-align: left;">Updates the properties of a SageMaker
image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_image_version/"> update_image_version </a></td>
<td style="text-align: left;">Updates the properties of a SageMaker
image version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_inference_experiment/"> update_inference_experiment </a></td>
<td style="text-align: left;">Updates an inference experiment that you
created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_model_card/"> update_model_card </a></td>
<td style="text-align: left;">Update an Amazon SageMaker Model Card</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_model_package/"> update_model_package </a></td>
<td style="text-align: left;">Updates a versioned model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_monitoring_alert/"> update_monitoring_alert </a></td>
<td style="text-align: left;">Update the parameters of a model monitor
alert</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_monitoring_schedule/"> update_monitoring_schedule </a></td>
<td style="text-align: left;">Updates a previously created schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_notebook_instance/"> update_notebook_instance </a></td>
<td style="text-align: left;">Updates a notebook instance</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sagemaker_update_notebook_instance_lifecycle_config/"> update_notebook_instance_lifecycle_config </a></td>
<td style="text-align: left;">Updates a notebook instance lifecycle
configuration created with the CreateNotebookInstanceLifecycleConfig
API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_pipeline/"> update_pipeline </a></td>
<td style="text-align: left;">Updates a pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_pipeline_execution/"> update_pipeline_execution </a></td>
<td style="text-align: left;">Updates a pipeline execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_project/"> update_project </a></td>
<td style="text-align: left;">Updates a machine learning (ML) project
that is created from a template that sets up an ML pipeline from
training to deploying an approved model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_space/"> update_space </a></td>
<td style="text-align: left;">Updates the settings of a space</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_training_job/"> update_training_job </a></td>
<td style="text-align: left;">Update a model training job to request a
new Debugger profiling configuration or to change warm pool retention
length</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_trial/"> update_trial </a></td>
<td style="text-align: left;">Updates the display name of a trial</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_trial_component/"> update_trial_component </a></td>
<td style="text-align: left;">Updates one or more properties of a trial
component</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_user_profile/"> update_user_profile </a></td>
<td style="text-align: left;">Updates a user profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemaker_update_workforce/"> update_workforce </a></td>
<td style="text-align: left;">Use this operation to update your
workforce</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemaker_update_workteam/"> update_workteam </a></td>
<td style="text-align: left;">Updates an existing work team with new
member definitions or description</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sagemaker()
    svc$add_association(
      Foo = 123
    )

    ## End(Not run)
