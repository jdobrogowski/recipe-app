package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.Note;
import com.jd.recipeapp.recipe.dtos.NoteDto;

public class NoteDtoToNote {

    public static Note rewrite(NoteDto noteDto) {

        if (noteDto == null) {
            return null;
        }
        return Note.builder()
              //  .id(noteDto.getId())
                .text(noteDto.getText())
                .build();
    }
}
