package entity;

/**
 * Created by song on 2015/11/15.
 * 抽象类
 * 所有实体的父类
 * 封装了所有数据库业务的主键：id
 * DTO：数据传输对象（类似于model）
 * 里面只有属性、get\set方法和toString方法，不能包含业务逻辑
 */
public abstract class IdEntity {
    protected Long id;

    public Long getId(){
        return id;
    }

    public void setId(Long id){
        this.id = id;
    }
}

