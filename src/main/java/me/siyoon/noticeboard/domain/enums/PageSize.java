package me.siyoon.noticeboard.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum PageSize {
    NOTICE(10);

    private Integer limit;
}
