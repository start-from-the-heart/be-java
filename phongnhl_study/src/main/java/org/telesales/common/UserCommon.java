package org.telesales.common;

import java.time.LocalDateTime;


public abstract class UserCommon {

  private boolean deleteFlg = false;

  private String createdBy;

  private LocalDateTime createdAt;

  private String updatedBy;

  private LocalDateTime updatedAt;

  public boolean isDeleteFlg() {
    return deleteFlg;
  }

  public void setDeleteFlg(boolean deleteFlg) {
    this.deleteFlg = deleteFlg;
  }

  public String getCreatedBy() {
    return createdBy;
  }

  public void setCreatedBy(String createdBy) {
    this.createdBy = createdBy;
  }

  public LocalDateTime getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }

  public String getUpdatedBy() {
    return updatedBy;
  }

  public void setUpdatedBy(String updatedBy) {
    this.updatedBy = updatedBy;
  }

  public LocalDateTime getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(LocalDateTime updatedAt) {
    this.updatedAt = updatedAt;
  }
}
