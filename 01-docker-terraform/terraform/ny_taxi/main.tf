terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.51.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Default GCP region"
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "GCP multi-region or region location"
  type        = string
  default     = "US"
}

variable "bucket_name" {
  description = "Unique GCS bucket name"
  type        = string
}

variable "dataset_name" {
  description = "BigQuery dataset name"
  type        = string
}

resource "google_storage_bucket" "data_lake" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = true
}

resource "google_bigquery_dataset" "warehouse" {
  dataset_id = var.dataset_name
  location   = var.location
}

