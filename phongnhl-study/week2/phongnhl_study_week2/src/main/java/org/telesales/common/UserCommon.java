package org.telesales.common;

import java.time.LocalDateTime;


public abstract class UserCommon {
  public boolean deleteFlg = false;
  public String createBy;
  public LocalDateTime createAt = LocalDateTime.now();
  public String updateBy;
  public LocalDateTime updateAt = LocalDateTime.now();

  public boolean isDeleteFlg() {
    return deleteFlg;
  }

  public void setDeleteFlg(boolean deleteFlg) {
    this.deleteFlg = deleteFlg;
  }

  public String getCreateBy() {
    return createBy;
  }

  public void setCreateBy(String createBy) {
    this.createBy = createBy;
  }

  public LocalDateTime getCreateAt() {
    return createAt;
  }

  public void setCreateAt(LocalDateTime createAt) {
    this.createAt = createAt;
  }

  public String getUpdateBy() {
    return updateBy;
  }

  public void setUpdateBy(String updateBy) {
    this.updateBy = updateBy;
  }

  public LocalDateTime getUpdateAt() {
    return updateAt;
  }

  public void setUpdateAt(LocalDateTime updateAt) {
    this.updateAt = updateAt;
  }
}
